<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orderbooking.aspx.cs" Inherits="WebApplication5.Orderbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   
    
   
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="69%" CellSpacing="2" CellPadding="8"
        GridLines="None"  >
        <Columns>
          
            <asp:BoundField DataField="p_id" HeaderText="Product_Id" SortExpression="p_id" />
           
            <asp:BoundField DataField="P_name" HeaderText="Product Name" SortExpression="p_name" />
          




             <asp:TemplateField HeaderStyle-Width="20px"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
                    <img width="100" src='../images/tempr/<%#Eval("image")%>' />
                </ItemTemplate>
            </asp:TemplateField>



            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
            <asp:BoundField DataField="qty" HeaderText="Qauntity" SortExpression="qauntity" />
        </Columns>
    </asp:GridView>
   <asp:Label ID="Label2" runat="server" Text="Number of Quantity"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter quantity"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter 10 digit contact" MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Place To Deliver"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter place to deliver"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Total"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Get Total" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Order It" OnClick="Button2_Click" />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Show Order History" />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" />
    <br />
</asp:Content>
