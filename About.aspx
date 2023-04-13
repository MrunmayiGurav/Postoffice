<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HomePage.About1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color:navy;
  color: white;
}

.container {
  padding: 0 10px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}


</style>

<div class="body">
    
<div class="about-section">
  <h1>About Us </h1>
  <p>We are here for providing the services.</p>
  <p>Our first priority is serving the best of best service for all the user's.<br>Providing the facilities in faster way. </p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>Mrunmayi Gurav.</h2>
        
        <p>mrunmayisantosh@gmail.com</p>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>Nikita kodale.</h2>
        
        <p>nikitakodale@gmail.com</p>
        
      </div>
    </div>
  </div>
  
 
</div>

</div>


</asp:Content>
