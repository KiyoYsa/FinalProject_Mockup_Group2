<%@ Page Title="Stories" Language="C#" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="FinalProject_Mockup_Group2.Stories" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <div class="page-header-section">
    <h1>Stories</h1>
    <p>"Through stories and shared experiences, traditions and cultural heritage are preserved and passed on to future generations."</p>
   </div>

<div class="container">
        <!-- MAIN STORY -->

    <div class="featured">

        <img src="images/pic1.png" />

        <h3>Featured Story </h3>

        <p>
        This space will contain a short description or summary of the blog post.
        It will highlight the main idea of the story and encourage readers to 
        continue reading the full article.
        </p>

        <a class="btn-read">
        Read Full Story
        </a>

    </div>

    <h2 style="color:#8C0000;">Latest Stories</h2>

         
    <!--- EXTER STORIES --->

    <div class="blog-grid">

        <div class="storiescard">
            <img src="images/pic1.png" />

            <h3>Story / Blog 1</h3>

            <p>
            This space will contain a short description or summary of the blog post.
            It will highlight the main idea of the story and encourage readers to 
            continue reading the full article.
            </p>

            <a class="btn-read">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic2.png" />

            <h3>Story / Blog 2</h3>

            <p>
            This space will contain a short description or summary of the blog post.
            It will highlight the main idea of the story and encourage readers to 
            continue reading the full article.
            </p>

            <a class="btn-read">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic3.png" />

            <h3>Story / Blog 3</h3>

            <p>
            This space will contain a short description or summary of the blog post.
            It will highlight the main idea of the story and encourage readers to 
            continue reading the full article.
            </p>

            <a class="btn-read">
            Read More
            </a>

        </div>

    </div>

</div>

    <section class="myths-strip">
    <h2>T’boli Myths & Legends</h2>
    <p class="subtitle">Stories passed down through generations, carrying the dreams and beliefs of the T’boli people.</p>

    <!-- Myth 1 -->
    <div class="strip strip-1">
        <div class="image">
            <img src="images/myth1.png" alt="Legend of Fu Dalu">
        </div>
        <div class="text">
            <h3>The Legend of Fu Dalu</h3>
            <p>Fu Dalu guides T’nalak dream weavers. Each design comes directly from dreams passed down through generations.</p>
            <a class="btn-read" href="#">Read More</a>
        </div>
    </div>

    <!-- Myth 2 -->
    <div class="strip strip-2">
        <div class="text">
            <h3>The Story of Lake Sebu</h3>
            <p>A tale of how the T’boli people were guided by spirits to settle near Lake Sebu, preserving harmony with nature and tradition.</p>
            <a class="btn-read" href="#">Read More</a>
        </div>
        <div class="image">
            <img src="images/myth2.png" alt="The Story of Lake Sebu">
        </div>
    </div>

    <!-- Myth 3 -->
    <div class="strip strip-1">
        <div class="image">
            <img src="images/myth3.png" alt="The Dream of Princess Alon">
        </div>
        <div class="text">
            <h3>The Dream of Princess Alon</h3>
            <p>The story of a princess whose dream inspired the first T’nalak patterns, shaping the spiritual and cultural identity of the T’boli community.</p>
            <a class="btn-read" href="#">Read More</a>
        </div>
    </div>

</section>

<style>
.myths-strip{
    width: 100%;
    margin: 75px 0px;
    padding: 50px 50px;
    background:#FFFEE0;
    align-items:center;
    display: flex;
    flex-direction: column;

}

.myths-strip h2{
    text-align: center;
    color: #8C0000;
    margin-bottom: 10px;
}

.myths-strip .subtitle{
    text-align: center;
    margin-bottom: 40px;
    color: #333;
}

/* STRIPS */
.strip{
    width:85%;
    background-color: #ffffff00;
    display: flex;
    align-items: center;
    padding:40px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 7px solid;
    color: #333;
}

.strip-1{
    border-color: #8C0000;
    flex-direction: row;
}

.strip-2{
    border-color: #FFC917;
    flex-direction: row-reverse;
}

/* Images */
.strip .image{
    flex: 1;
    padding: 10px;
}

.strip .image img{
    width: 100%;
    height: auto;
    border-radius: 8px;
    object-fit: cover;
}

/* Text */
.strip .text{
    flex: 1;
    padding: 10px 30px;
}

.strip h3{
    color: #8C0000;
    margin-bottom: 15px;
}

.strip p{
    margin-bottom: 20px;
}

/* Read More button */
.strip .read{
    display: inline-block;
    padding: 8px 14px;
    background: #8C0000;
    color: #FAF3CD;
    text-decoration: none;
    border-radius: 4px;
    font-weight: bold;
    text-transform: uppercase;
    transition: 0.2s;
}

.strip .read:hover{
    background: #CD8417;
    color: white;
}

/* Responsive */
@media (max-width: 1024px){
    .strip{
        flex-direction: column !important;
        text-align: center;
    }
    .strip .text{
        padding: 20px 0;
    }
    .strip .image{
        padding: 0;
    }
}
</style>
</asp:Content>
