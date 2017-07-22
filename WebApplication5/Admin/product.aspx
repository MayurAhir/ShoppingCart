<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WebApplication5.Admin.product" %>
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

        <asp:BoundField DataField="p_id" HeaderText="PRODUCT ID" SortExpression="orderid" />
        <asp:BoundField DataField="p_name" HeaderText="PRODUCT NAME" SortExpression="NM" />
  
        <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="PRC" />
        <asp:BoundField DataField="qty" HeaderText="QAUNTITY" SortExpression="QTY" />

        <asp:BoundField DataField="discount" HeaderText="DISCOUNT" SortExpression="DIC" />
        <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <img width="100" src="../images/tempr/<%#Eval("image") %>"/>
                   
                    </div>
                </ItemTemplate>
            </asp:TemplateField>

         <asp:CheckBoxField DataField="isdiscount" HeaderText="IsDISCOUNT" SortExpression="isDIS" />
        <asp:CheckBoxField DataField="isactive" HeaderText="IsACTIVE" SortExpression="isACT" />
        <asp:CheckBoxField DataField="isdelete" HeaderText="IsDELETE" SortExpression="isNW" />
        
        <asp:CheckBoxField DataField="isnew" HeaderText="IsNEW" SortExpression="isPROCESS" />
        
     
 
  <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="products.aspx?id=<%#Eval("p_id") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
 <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="products.aspx">Add</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("p_id") %>'
                            OnClientClick='return confirm("Are you sure you want to delete this Download link?")' OnClick="LbtnDelete_Click">
                            Delete</asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>

    </Columns>
       
    </asp:GridView>



</form>
</body>
</html>

</asp:Content>
