<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="FinalProject_Mockup_Group2.Stories" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

    <h1 >Stories & Blog</h1>

    <p class="subtitle">
    Stories from the Ifugao community, sharing traditions, culture, and heritage.
    </p>

    <!-- MAIN STORY -->

    <div class="featured">

        <img src="images/pic1.png" />

        <h2>Lorem ipsum</h2>

        <p>
        Lorem ipsum dolor sit amet consectetur adipiscing elit. 
        Consectetur adipiscing elit quisque faucibus ex sapien vitae.
        Ex sapien vitae pellentesque sem placerat in id.
        Placerat in id cursus mi pretium tellus duis.
        Pretium tellus duis convallis tempus leo eu aenean.
        </p>

        <a class="read">
        Read Full Story
        </a>

    </div>

    <h2 style="color:#8C0000;">Latest Stories</h2>

         
    <!--- EXTER STORIES --->

    <div class="blog-grid">

        <div class="storiescard">
            <img src="images/pic1.png" />

            <h3>Lorem Ipsum</h3>

            <p>
            Lorem ipsum dolor sit amet consectetur adipiscing elit.
            Dolor sit amet consectetur adipiscing elit quisque faucibus.
            </p>

            <a class="read">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic2.png" />

            <h3>Lorem Ipsum</h3>

            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit.
                Dolor sit amet consectetur adipiscing elit quisque faucibus.
            </p>

            <a class="read">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic3.png" />

            <h3>Lorem Ipsum</h3>

            <p>
            Lorem ipsum dolor sit amet consectetur adipiscing elit.
            Dolor sit amet consectetur adipiscing elit quisque faucibus.
            </p>

            <a class="read">
            Read More
            </a>

        </div>

    </div>

</div>



</asp:Content>
