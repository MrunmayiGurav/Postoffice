<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adstamp.aspx.cs" Inherits="HomePage.Adstamp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta charset="UTF-8">
    <html>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
  <head>
<style>
h1 {
  font-size: 20px;
  margin-top: 24px;
  margin-bottom: 24px;
}

img {
height: 60px;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
  </script>


</head>

<body>
  <div class="col-md-6 offset-md-3 mt-5">
      
        <br>
        
        <form accept-charset="UTF-8" action="https://getform.io/f/{your-form-endpoint-goes-here}" method="POST" enctype="multipart/form-data" target="_blank">
          <div class="form-group">
           <label for="exampleInputName"> Name</label>
              <asp:TextBox CssClass="form-control" ID="name" runat="server"></asp:TextBox>
&nbsp;<label for="nocards">Number of cards</label>
              <asp:TextBox ID="noc" CssClass="form-control" runat="server"></asp:TextBox>
&nbsp;<label for="prize">Prize</label>
              <asp:TextBox ID="price" CssClass="form-control" runat="server"></asp:TextBox>
&nbsp;</div>
         
          
          <hr>
          <div class="form-group mt-3">
            <label class="mr-2">Upload stampcard image:</label>
              <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
&nbsp;</div>
          <hr>
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
        </form>
    </div>
  
</body></html>
</asp:Content>
