<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="manageproduct.aspx.cs" Inherits="WebApplication5.Admin.manageproduct" %>
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
<h1><asp:Label ID="Label1" runat="server" Text="Manage Event"></asp:Label></h1>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
<br />
<asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Event Name"></asp:Label>
<br />
    <asp:DropDownList ID="DropDownList1" runat="server" >
    </asp:DropDownList>
<br />




<asp:Label ID="Label3" runat="server" Text="SUB EVENT NAME"></asp:Label>
<br />

<asp:TextBox ID="sdatetb" runat="server"></asp:TextBox>
<br />


    <asp:Label ID="Label4" runat="server" Text="Event Image"></asp:Label>
    <br />
    <asp:Image ID="Image1" CssClass="nimg" Visible="false" runat="server" Height="164px" Width="235px" />
    
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />

   <%-- <asp:Label ID="Label5" runat="server" Text="Event Place"></asp:Label>
    <br />
    <asp:TextBox ID="eplace" runat="server"></asp:TextBox>
     <br />
    <asp:Label ID="Label6" runat="server" Text="city"></asp:Label>
        <br />
    <asp:TextBox ID="citytb" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="state"></asp:Label>
        <br />
    <asp:TextBox ID="statetb" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label9" runat="server" Text="country"></asp:Label>
        <br />
    <asp:TextBox ID="countrytb" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server" Text="contactno"></asp:Label>
        <br />
    <asp:TextBox ID="contacttb" runat="server"></asp:TextBox>
    <br />--%>
    <asp:Label ID="Label11" runat="server" Text="DESCRIPTION"></asp:Label>
        <br />
    <asp:TextBox ID="DETB" runat="server"></asp:TextBox>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="ISACTIVE" />

    <br />
    
   
    <asp:Button ID="s1" runat="server" Text="Submit" onclick="s1_Click" />

    <asp:Button ID="u1" runat="server" Text="Update" onclick="u1_Click" />

    <asp:Button ID="c1" runat="server" Text="Cancel" />

</div>
</form>

</body>
</html>

</asp:Content>
