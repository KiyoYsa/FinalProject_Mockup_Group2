using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject_Mockup_Group2
{
    public partial class UserLogin : System.Web.UI.Page
    {
        // Ensure this name matches your Web.config connection string key
        string connStr = ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is already logged in via Session
                if (Session["UserID"] != null)
                {
                    ShowDashboard();
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Querying the Users table based on your schema
                string query = "SELECT UserID, Username, [Role] FROM Users WHERE Username=@user AND Password=@pass";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@user", username_input.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", pass_input.Text.Trim());

                try
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        // Set Session variables
                        Session["UserID"] = reader["UserID"];
                        Session["Username"] = reader["Username"].ToString();
                        Session["Role"] = reader["Role"].ToString();

                        ShowDashboard();
                    }
                    else
                    {
                        lblError.Text = "Invalid username or password.";
                        lblError.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error: " + ex.Message;
                    lblError.Visible = true;
                }
            }
        }

        private void ShowDashboard()
        {
            pnlLogin.Visible = false;
            pnlDashboard.Visible = true;
            litUsername.Text = Session["Username"].ToString();
            litRole.Text = Session["Role"].ToString();
            litSidebarText.Text = "Portal Dashboard";
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("UserLogin.aspx");
        }

        // --- CRUD POPUP LOGIC ---

        protected void btnOpenEdit_Click(object sender, EventArgs e)
        {
            txtEditUsername.Text = Session["Username"].ToString();
            pnlEditModal.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "UPDATE Users SET Username=@user, Password=@pass WHERE UserID=@id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@user", txtEditUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", txtEditPass.Text.Trim());
                cmd.Parameters.AddWithValue("@id", Session["UserID"]);

                conn.Open();
                cmd.ExecuteNonQuery();

                Session["Username"] = txtEditUsername.Text; // Update session
                pnlEditModal.Visible = false;
                ShowDashboard();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnlEditModal.Visible = false;
        }
    }
}