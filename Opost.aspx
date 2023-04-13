<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Opost.aspx.cs" Inherits="HomePage.Opost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
        <style>
    .order-form .container {
      color: #4c4c4c;
      padding: 20px;
      box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
    }

    .order-form-label {
      margin: 8px 0 0 0;
      font-size: 14px;
      font-weight: bold;
    }

    .order-form-input {
      width: 100%;
      padding: 8px 8px;
      border-width: 1px !important;
      border-style: solid !important;
      border-radius: 3px !important;
      font-family: 'Open Sans', sans-serif;
      font-size: 14px;
      font-weight: normal;
      font-style: normal;
      line-height: 1.2em;
      background-color: transparent;
      border-color: #cccccc;
    }

    .btn-submit:hover {
      background-color: #090909 !important;
    }
        </style>
  <section class="order-form my-4 mx-4">
    <div class="container pt-4">

      <div class="row">
        <div class="col-12">
          <h1>Order for post card</h1>
&nbsp;<hr class="mt-1">
        </div>
        <div class="col-12">

          <div class="row mx-4">
            <div class="col-12 mb-2">
              <label class="order-form-label">Name</label>
            </div>
            <div class="col-12 col-sm-6">
                <asp:TextBox ID="TextBox1" runat="server" style="height: 25px" CssClass="order-form-input"></asp:TextBox>
            </div>
            <div class="col-12 col-sm-6 mt-2 mt-sm-0">
             <asp:TextBox ID="TextBox2" runat="server" CssClass="order-form-input" ></asp:TextBox>
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Type of thing you want to order</label>
            </div>
            <div class="col-12">
                <asp:TextBox ID="TextBox3" CssClass="order-form-input" runat="server"></asp:TextBox>
&nbsp;</div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Another type of thing you want to order</label>
            </div>
            <div class="col-12">
             <asp:TextBox ID="TextBox4" runat="server" CssClass="order-form-input"></asp:TextBox>
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label" for="date-picker-example">Date</label>
            </div>
            <div class="col-12">
              <asp:TextBox ID="TextBox5" runat="server" CssClass="order-form-input" TextMode="Date"></asp:TextBox>
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Adress</label>
            </div>
            <div class="col-12">
              <asp:TextBox ID="TextBox6" runat="server" CssClass="order-form-input"></asp:TextBox>
            </div>
            <div class="col-12 mt-2">
                <label class="order-form-label">Street Address Line 2</label>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="order-form-input"></asp:TextBox>
              
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <label class="order-form-label">City</label>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="order-form-input"></asp:TextBox>
              
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
              <label class="order-form-label">Region</label>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="order-form-input"></asp:TextBox>
              
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <label class="order-form-label">Pin code</label>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="order-form-input"></asp:TextBox>
              
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
              <label class="order-form-label">Country</label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="order-form-input"></asp:TextBox>
              
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <div class="form-check">
                <input type="checkbox" class="form-check-input" name="validation" id="validation" value="1">
                <label for="validation" class="form-check-label">I know what I need to know</label>
              </div>
            </div>
          </div>

          <div class="row mt-3">
            <div class="col-12">
                <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click1"  />
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
</asp:Content>
