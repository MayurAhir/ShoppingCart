<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.ico" />


      <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).load(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
   
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(/files/bg1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Latest Product with reliable Price.</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                   <!-- <a class="btn-slide animation animated-item-3" href="#">Read More</a>-->
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="/files/img1.png" class="mayur">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(/files/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Offering sell!!</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                 <!--   <a class="btn-slide animation animated-item-3" href="#">Read More</a>-->
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="/files/img2.png" class="mayur">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(/files/bg3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Exclusive Offers Every week</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                  <!--  <a class="btn-slide animation animated-item-3" href="#">Read More</a>-->
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="/files/img3.png"class="mayur">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section>
    <!--/#main-slider-->
 <section id="feature">
        <div class="container">
           <div class="center wow fadeInDown"style="visibility: visible; animation-name: fadeInDown;">
                <h2>Items On Sell!!</h2>
                <p class="lead" style="color:goldenrod">Get update of sell offers by frequently visting to our site<br/>Best product with Cheapest price</p>
            </div>

            <div class="row">
                <div class="features">
                    
                        <div class="feature-wrap">
                            <!-- start from here-->
                         <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

            <ItemTemplate>
                <li class="col-md-4" style="float:left;">
                    <div class="gal-item">
                         
 <img class="mayur1"  src="/files/<%#Eval("image")%>" />
                     
                    </div>
                    <span class="item-text text-center" style="text-align:center"> <%#Eval("p_name") %></span><br />
                    $<span class="item-text text-center" style="text-align:center"> <%#Eval("price") %></span><br />
                   
                </li>
            </ItemTemplate>

            </asp:Repeater>
                           
                        </div>
                   
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section>

    <!--/#feature-->
    <section id="middle">
        <div class="container">
            <div class="row">
               

                <div class="col-sm-12 wow fadeInDown">
                  <h2>New Items In Markets!</h2>
                    <div class="accordion">
                       
                      <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">

            <ItemTemplate>
                <li class="col-md-4" style="float:left;list-style:none">
                    <div class="gal-item">
                       <img class="mayur1" src="/files/<%#Eval("image") %>" />
       
                    </div>
                    <span class="item-text text-center" style="text-align:center;color:white"> <%#Eval("p_name") %></span><br />
                    <span class="item-text text-center" style="text-align:cente;color:white">$ <%#Eval("price") %></span><br />
                   
                </li>
            </ItemTemplate>

            </asp:Repeater>
                    </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section>
    <!--/#middle-->
     <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Project Work</h3>
                     <p>Shopping Web site in Asp.net Using C#</p>
                            
                    </div>    
                </div><!--/.col-md-3-->

               
            </div>
        </div>
    </section>

</asp:Content>
