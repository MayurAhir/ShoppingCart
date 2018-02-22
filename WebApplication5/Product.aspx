<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication5.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            
      <div class="row">
                <div class="features">
                                          <div class="feature-wrap">
                            <!-- start from here-->
     <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

            <ItemTemplate>
                <li class="col-md-4" style="float:left;">
                 
                       <img class="mayur1" src="/files/<%#Eval("image")%>" />
       
                  
                    <span class="item-text text-center" style="text-align:center"> <%#Eval("p_name") %></span><br />
                    
                    $<span class="item-text text-center" style="text-align:center"> <%#Eval("price") %></span><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/orderbooking.aspx?id="+ Eval("p_id") %>'>Buy It</asp:HyperLink>
                   
                    
                </li>
            </ItemTemplate>

            </asp:Repeater>                          
                            
                                                                             
                        </div>
                    
                </div><!--/.services-->
                
            </div><!--/.row-->
            <asp:Button ID="Button1" runat="server" Text="Show Order History" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>

        </section>
</asp:Content>
