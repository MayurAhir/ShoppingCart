<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orderbooking.aspx.cs" Inherits="WebApplication5.Orderbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  
     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   
    
   
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="69%" CellSpacing="2" CellPadding="8"
        GridLines="None"  >
        <Columns>
          
            <asp:BoundField DataField="p_id" HeaderText="Product_Id" SortExpression="p_id" />
           
            <asp:BoundField DataField="P_name" HeaderText="Product Name" SortExpression="p_name" />
          




             <asp:TemplateField HeaderStyle-Width="200px"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
                    <img class="mayur1" style="height:150px;width:150px;" src='~/files/<%#Eval("image")%>' />
                </ItemTemplate>
            </asp:TemplateField>



            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
            <asp:BoundField DataField="qty" HeaderText="Qauntity" SortExpression="qauntity" />
        </Columns>
    </asp:GridView>
     <br />
     <br />
   <asp:Label ID="Label2" runat="server" Text="Number of Quantity"></asp:Label>
    &nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    <asp:Label ID="Label6" runat="server"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter quantity"></asp:RequiredFieldValidator>
     <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
     <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Place To Deliver"></asp:Label>
    &nbsp;&nbsp;<br />
     <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Street Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox3" runat="server" Height="71px" TextMode="MultiLine" Width="251px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Street Address"></asp:RequiredFieldValidator>
     <br />
     <br />
&nbsp;<asp:Label ID="Label12" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter City"></asp:RequiredFieldValidator>
     <br />
     <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Postal Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Postal Code"></asp:RequiredFieldValidator>
     <br />
     <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter State"></asp:RequiredFieldValidator>
     <br />
     <br />
&nbsp;<asp:Label ID="Label11" runat="server" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter Country"></asp:RequiredFieldValidator>
     <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Total"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" OnTextChanged="TextBox4_TextChanged">total</asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Get Total" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Order It" OnClick="Button2_Click" />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Show Order History" CausesValidation="False" />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" CausesValidation="False" />
    <br />
</asp:Content>
