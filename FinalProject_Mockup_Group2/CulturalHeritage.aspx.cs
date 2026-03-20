using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalProject_Mockup_Group2
{
    public partial class CulturalHeritage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPatterns();
            }
        }

        private void BindPatterns()
        {
            // Using the name from your Web.config
            string connString = ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connString))
            {
                // We pull Name, Meaning, and the new ImageUrl column
                string query = "SELECT PatternName, SpiritualMeaning, History FROM Patterns";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptPatterns.DataSource = dt;
                        rptPatterns.DataBind();
                    }
                }
            }
        }
    }
}