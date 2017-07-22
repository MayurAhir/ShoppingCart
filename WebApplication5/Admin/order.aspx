<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication5.Admin.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <html>
<body>


<form runat="server">



<asp:GridView ID="Gridcontact" runat="server" AutoGenerateColumns="False"  
        Width="90%" CellSpacing="2" CellPadding="8"
        GridLines="None" 
    onselectedindexchanged="Gridcontact_SelectedIndexChanged" >
    <Columns>

        <asp:BoundField DataField="o_id" HeaderText="ORDER ID" SortExpression="orderid" />
        <asp:BoundField DataField="u_id" HeaderText="USER ID" SortExpression="userid" />
        <asp:BoundField DataField="p_id" HeaderText="PRODUCT ID" SortExpression="pid" />
        <asp:BoundField DataField="username" HeaderText="USERNAME" SortExpression="username" />
        <asp:BoundField DataField="p_name" HeaderText="PRODUCT NAME" SortExpression="productnm" />

        <asp:BoundField DataField="qty" HeaderText="QAUNTITY" SortExpression="qty" />
        <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="prc" />
        <asp:BoundField DataField="total" HeaderText="TOTAL" SortExpression="ttl" />
        <asp:BoundField DataField="o_date" HeaderText="ORDER DATE" SortExpression="odt" />

        
        <asp:CheckBoxField DataField="isprocessed" HeaderText="IsPROCESSED" SortExpression="isPROCESS" />
        
     
        
        <asp:BoundField DataField="contact" HeaderText="CONTACT" SortExpression="cntct" />
        <asp:BoundField DataField="place" HeaderText="PLACE" SortExpression="plc" />

         
  <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="manageorder.aspx?id=<%#Eval("o_id") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>

    </Columns>
       
    </asp:GridView>



</form>
</body>
</html>
</asp:Content>
