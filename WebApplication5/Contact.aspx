<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication5.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
  
    <section id="contact-info">
     <br /> <br />  
        <div class="center">                
            <h2>How to Reach Us?</h2>
            <p class="lead">Get In Touch..</p>
     
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap">
                            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.ca/maps/place/Lambton+College/@43.7732574,-79.3380933,17z/data=!3m1!4b1!4m5!3m4!1s0x882b2d6fc6ca7f5d:0x2a12502c1cd1e815!8m2!3d43.7732574!4d-79.3358993"></iframe>
                        </div>
                    </div>

                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>Head Office</h5>
                                    <p>LunciKuai  <br>
                                    Navsari, </p>
                                    <p>Phone:123-456-7894 <br>
                                    Email Address:info@techlogica.com</p>
                                </address>

                                
                            </li>


                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/gmap_area -->
    <section id="contact-page">
        <div class="container">
        <br />
        <br />
            <div class="center">        
                <h2>Drop Your Message</h2>
                <p class="lead">We will get back you soon. Keep In Touch..</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Name *</label>
                               <asp:TextBox ID="txtName" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                             </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                          
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                          <asp:TextBox ID="phn" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <label>Company Name</label>
                          <asp:TextBox ID="txtcmpnm" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Subject *</label>
                            <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                            
                        </div>
                        <div class="form-group">
                            <label>Message *</label>
                            <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control" required="required" Rows="8" TextMode="MultiLine"></asp:TextBox>
                           
                        </div>                        
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Submit Message" OnClick="Button1_Click" />
                        </div>
                    </div>
                
            </div><!--/.row-->
        </div><!--/.container-->
    </section>
    
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).scroll(function () {
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
    <!-- /top-link-block -->
    <!-- Jscript -->
</asp:Content>
