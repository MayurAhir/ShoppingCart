<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication5.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            
      <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <!-- start from here-->
                         <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <li class="col-md-4" style="float:left;">
                    <div class="gal-item">
                       <img class="img-responsive" src='../images/tempr/<%#Eval("image")%>' />
       
                    </div>
                    <span class="item-text text-center" style="text-align:center"> <%#Eval("p_name") %></span><br />
                    
                    $<span class="item-text text-center" style="text-align:center"> <%#Eval("price") %></span><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/orderbooking.aspx?id="+ Eval("p_id") %>'>Buy It</asp:HyperLink>
                   
                    
                </li>
            </ItemTemplate>

            </asp:Repeater>
                           
                            
                           
                        </div>
                    </div>
                </div><!--/.services-->
                
            </div><!--/.row-->
        </div>
        </section>
</asp:Content>
