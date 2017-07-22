<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="manageorder.aspx.cs" Inherits="WebApplication5.Admin.manageorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form id="form1" runat="server">
        
        <asp:Label ID="Label2" runat="server" Text="PRODUCT NAME"></asp:Label>
        <br />
         <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="QAUNTITY"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label1" runat="server" Text="TOTAL"></asp:Label>
        <br />
       <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="ORDER_DATE"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="SET AS PROCESSED"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" />
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
    </form>
</asp:Content>
