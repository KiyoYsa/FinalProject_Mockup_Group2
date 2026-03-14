<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FinalProject_Mockup_Group2.home" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<section class="hero">
<!-- insert pic pa -->
<img src="images/mainpic.jpg" alt="Indigenous Craft"> 

<h1>Preserving Culture Through Craft</h1>

<p>
Discover handcrafted works created by Indigenous artisan communities.
Each piece represents generations of tradition, creativity,
and cultural identity.
</p>

<a class="button" href="shop.aspx">Explore the Crafts</a>

</section>


<!-- about us -->

<section>

<h2>About the Collective</h2>

<p>
This website highlights Indigenous artisan communities and their traditional crafts.....</p>

</section>


<!-- features -->

<section>

<h2>Explore</h2>

<div class="cards">
<!-- wala pang pictures na ilalagay -->
<div class="card">
<img src="images/artisan.jpg" alt="Artisan">
<h3>Our Artisans</h3>
<p>Meet the creators behind the crafts.</p>
</div>

<div class="card">
<img src="images/craft.jpg" alt="Craft">
<h3>Shop + The Craft</h3>
<p>Discover traditional handmade crafts.</p>
</div>

<div class="card">
<img src="images/heritage.jpg" alt="Heritage">
<h3>Cultural Heritage</h3>
<p>Learn the meaning behind Indigenous designs.</p>
</div>

<div class="card">
<img src="images/story.jpg" alt="Stories">
<h3>Stories</h3>
<p>Read stories from artisan communities.</p>
</div>

</div>

</section>


<section class="cta">

<h2>Support Indigenous Craftsmanship</h2>

<p>
Every craft helps sustain artisan communities and preserve cultural heritage.
</p>

<a class="button" href="shop.aspx">Support the Artisans</a>

</section>


</asp:Content>
