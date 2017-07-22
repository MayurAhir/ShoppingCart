<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication5.Admin.contact" %>
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
          
            <asp:BoundField DataField="c_id" HeaderText="CONTACT ID" SortExpression="contactid" />
            <asp:BoundField DataField="name" HeaderText="USER NAME" SortExpression="username" />
            <asp:BoundField DataField="phone" HeaderText="CONTACT NO" SortExpression="contactno" />
            <asp:BoundField DataField="email" HeaderText="EMAIL ID" SortExpression="emailid" />
            <asp:BoundField DataField="subject" HeaderText="SUBJECT" SortExpression="subject" /> 

            <asp:BoundField DataField="message" HeaderText="MESSAGES" SortExpression="messages" /> 


                    </Columns>
       
    </asp:GridView>



</form>
</body>
</html>

</asp:Content>
