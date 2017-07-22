<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="WebApplication5.Admin.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

<html>
<head>
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body>

<form id="Form1" runat="server">
<div class="mb1">
<h1><asp:Label ID="Label1" runat="server" Text="Manage Inventory"></asp:Label></h1>
    <asp:Label ID="Label5" runat="server" Text="Product Id"></asp:Label>
    <br />

    <asp:TextBox ID="p_id" runat="server" ReadOnly="true" ></asp:TextBox>
<br />
    <br />

 <asp:Label ID="Label6" runat="server" Text="Product Name"></asp:Label>
    <br />

<asp:TextBox ID="pnm" runat="server" ReadOnly="false"></asp:TextBox>
<br />
    <br />

<asp:Label ID="Label2" runat="server" Text="Qauntity"></asp:Label>
    <br />

    <asp:TextBox ID="qty" runat="server"></asp:TextBox>
<br />
    <br />

    <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
    <br />

    <asp:TextBox ID="prc" runat="server" TextMode="Number"></asp:TextBox>

    <br />
    <br />

<asp:Label ID="Label3" runat="server" Text="Discount"></asp:Label>
    <br />

    <asp:TextBox ID="disc" runat="server"></asp:TextBox>
<br />
    <br />

    <asp:Label ID="Label8" runat="server" Text="Isdiscount"></asp:Label>
    <br />

    <asp:CheckBox ID="chkdis" runat="server" />
<br />
    <br />

     <asp:Label ID="Label9" runat="server" Text="Isactive"></asp:Label>
    <br />

    <asp:CheckBox ID="chkact" runat="server" />
    <br />
    <br />

    <asp:Label ID="Label4" runat="server" Text="Isdelete"></asp:Label>
    <br />

    <asp:CheckBox ID="chkdlt" runat="server" />
    <br />
    <br />

     <asp:Label ID="Label10" runat="server" Text="Isnew"></asp:Label>
    <br />

    <asp:CheckBox ID="chknw" runat="server" />
    <br />
    <br />

    <asp:Label ID="Label12" runat="server" Text="Uploaded Image"></asp:Label>
    <br />
    <asp:Image ID="Image1" CssClass="nimg" Visible="false" runat="server" Height="164px" Width="235px" />
    
    <br />
      <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />

  

    
   
    <asp:Button ID="s1" runat="server" Text="ADD" onclick="s1_Click" />

    <asp:Button ID="u1" runat="server" Text="Update" onclick="u1_Click" />

    <asp:Button ID="c1" runat="server" Text="Cancel" OnClick="c1_Click" />

</div>
</form>

</body>
</html>

</asp:Content>
