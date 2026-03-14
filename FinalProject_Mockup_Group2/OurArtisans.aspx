<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurArtisans.aspx.cs" Inherits="FinalProject_Mockup_Group2.OurArtisans" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="our-artisans-page">
    
    <section>
        <div class="our-artisans">
            <h1>OUR ARTISANS</h1>

             <div class="artisan-page-description"> 
                <p>
                    <br> 
                    The Our Artisans page introduces the skilled individuals behind the products and services featured in this website.  
                    Its purpose is to highlight the artisans, their craftsmanship, and their contribution to preserving traditional skills  
                    and cultural heritage. By showcasing their work and stories, the page allows visitors to learn more about the people  
                    responsible for creating the products presented in the platform. 
                </p>
            </div> 

            <!-- First artisan -->
            <div class="artisan-wrapper">
                <div class="artisan-content">
                    <h3>Artisan 1 Name (Province)</h3>
                    <p>Contains artisan's description, background, culture and the likes. Read more would take them to their heritage.</p>
                    <div class="artisan-button">
                        <a href="CulturalHeritage.aspx">Read More</a>
                    </div>
                </div>
                <div class="artisan-image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>

            <!-- Second artisan (reversed) -->
            <div class="artisan-wrapper reverse">
                <div class="artisan-content">
                    <h3>Artisan 2 Name (Province)</h3>
                    <p>Contains artisan's description, background, culture and the likes. Read more would take them to their heritage.</p>
                    <div class="artisan-button">
                        <a href="CulturalHeritage.aspx">Read More</a>
                    </div>
                </div>
                <div class="artisan-image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>
        </div>
    </section>

    
<style>
    * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        line-height: 1.5;
        font-family: Arial, sans-serif;
    }

    body {
        width: 100%;
        min-height: 100vh;
        background-color: #ddd;
    }

    .our-artisans {
        width: 100%;
        text-align: center;
    }

    .our-artisans h1 {
        text-align: center;
        font-size: 40px;
        color: #7B160E;
        letter-spacing: 1.5px;
        margin-top: 50px;
        display: inline-block;
        padding-bottom: 10px;
    }

    .our-artisans h1::after {
        content: "";
        display: block;
        width: 120px;
        height: 4px;
        background: #7B160E;
        margin: 10px auto;
        border-radius: 2px;
    }

    .wrapper {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 0px 60px;
        margin: 80px auto;
        flex-wrap: wrap;
    }

    .wrapper.reverse {
        flex-direction: row-reverse;
    }

    .content {
        width: 60%;
        text-align: left;
        padding: 0px 40px;
    }

    .content h3 {
        color: #222;
        letter-spacing: 1px;
    }

    .content p {
        font-family: sans-serif;
        font-size: 18px;
        color: black;
        margin-top: 20px;
    }

    .content .button {
        margin-top: 40px;
    }

    .content .button a {
        color: #fff;
        background-color: #BD8232;
        border: 1px solid #BD8232;
        padding: 10px 35px;
        letter-spacing: 1px;
        font-size: 22px;
        text-transform: uppercase;
    }

    .content .button a:hover {
        background-color: #fff;
        color: #BD8232;
    }

</asp:Content>
    
