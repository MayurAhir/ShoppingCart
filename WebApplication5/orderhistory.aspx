<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orderhistory.aspx.cs" Inherits="WebApplication5.orderhistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <p>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="69%" CellSpacing="2" CellPadding="8"
        GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
        <Columns>
                   <asp:BoundField DataField="isprocessed" HeaderText="Dilivered" SortExpression="diliver" />
                    <asp:BoundField DataField="P_name" HeaderText="Product Name" SortExpression="p_name" />
          
                  
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
                   <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" /> 
           
            <asp:BoundField DataField="qty" HeaderText="Qauntity" SortExpression="qauntity" />
            
      
        </Columns>
    </asp:GridView>
         <asp:Button ID="Button3" runat="server" Text="Buy More Product" OnClick="Button3_Click" Visible="False" />
         <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
         &nbsp;</p>




</asp:Content>
