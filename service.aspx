<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MechInstru.com service</title>

    <link rel="shortcut icon" type="image/ico" href="Assets/images/favicon.ico" />
    <link rel="stylesheet" href="Assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Assets/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Spectral" rel="stylesheet" />
    <link href="Assets/css/main.css" rel="stylesheet" />
    <script src="Assets/javascript/head.core.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="Assets/javascript/main.js"></script>
</head>
<body>
    <div id="container">
        <div id="pre-header">
            <div class="container">
                <div class="row clearfix">
                    <div id="mobile_num" class="col-sm-7">
                        <h5>Call Us: +91-8287598404</h5>
                    </div>
                    <div id="direct_links" class="col-sm-5">
                        <!-- enquiry, mail and call details -->
                        <div class="icons">
                            <div class="callus"><i class="fa fa-phone" aria-hidden="true "></i></div>
                            <div class="mailus"><i class="fa fa-envelope-o " aria-hidden="true "></i></div>
                            <div class="enquiry"><i class="fa fa-inr " aria-hidden="true "></i></div>
                        </div>
                        <!--  search area  -->
                        <div class="search">
                            <input type="text " placeholder="Search " id="txt_search" />
                            <i class="searchicon fa fa-search " aria-hidden="true "></i>
                        </div>
                        <!-- follow us on facebook, google-plus and linkedin -->
                        <div class="followus">
                            <div class="socialicon googleplus"><i class="fa fa-google-plus " aria-hidden="true "></i></div>
                            <div class="socialicon facebook"><i class="fa fa-facebook " aria-hidden="true "></i></div>
                            <div class="socialicon linkedin"><i class="fa fa-linkedin " aria-hidden="true "></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div id="logo">
                            <img src="Assets/images/logo7.png" alt="logo not available" />
                            <h2>MechInstru Pvt. Ltd.</h2>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div id="navigation_bar">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="service.aspx">Service</a></li>
                                <li><a href="aboutus.html">About Us</a></li>
                                <li><a href="contactus.html">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--                <div class="mobile_header "></div>-->
            </div>
        </header>
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <form id="form1" runat="server">
                            <h1>Service</h1>
                            <div id="service_head">
                                <h2>Service Request / Spare Part Order Form</h2>
                                <h5>Please send us your service request or requisition for spare parts you require and we shall get back to you promptly.</h5>
                            </div>
                            <div id="query_form">
                                <div class="form_row clearfix">
                                    <div class="div_label left">
                                        <asp:Label ID="lbl_name" Text="Name*" runat="server" CssClass="my_label" />
                                    </div>
                                    <div class="div_txtbox left">
                                        <asp:TextBox ID="txt_name" runat="server" CssClass="txtbox" />
                                    </div>

                                </div>
                                <div class="form_row clearfix">
                                    <div class="div_label left">
                                        <asp:Label ID="lbl_company" Text="Company*" runat="server" CssClass="my_label" />
                                    </div>
                                    <div class="div_txtbox left">
                                        <asp:TextBox ID="txt_company" runat="server" CssClass="txtbox" />
                                    </div>
                                </div>
                                <div class="form_row clearfix">
                                    <div class="div_label left">
                                        <asp:Label ID="lbl_mob" Text="Mobile*" runat="server" CssClass="my_label" />
                                    </div>
                                    <div class="div_txtbox left">
                                        <asp:TextBox ID="txt_mob" runat="server" CssClass="txtbox" onKeyUp="return mobileValidate(event)"/>
                                    </div>
                                </div>
                                <div class="form_row clearfix">
                                    <div class="div_label left">
                                        <asp:Label ID="lbl_email" Text="e-Mail*" runat="server" CssClass="my_label" />
                                    </div>
                                    <div class="div_txtbox left">
                                        <asp:TextBox ID="txt_email" runat="server" CssClass="txtbox" />
                                    </div>
                                </div>
                                <div class="form_row clearfix">
                                    <div class="div_label left">
                                        <asp:Label ID="lbl_sparse_part" Text="Sparse Part*" runat="server" CssClass="my_label" />
                                    </div>
                                    <div class="div_txtbox left">
                                        <asp:DropDownList ID="ddl_sparse_part" runat="server" CssClass="dropdown">
                                            <asp:ListItem Value="Zeolite Molecular Sieve">Zeolite Molecular Sieve</asp:ListItem>
                                            <asp:ListItem Value="Activated Alumina">Activated Alumina</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form_row clearfix">
                                    <div class="div_label left">
                                        <asp:Label ID="lbl_details" Text="Details" runat="server" CssClass="my_label" />
                                    </div>
                                    <div class="div_txtbox left">
                                        <asp:TextBox ID="txt_details" runat="server" CssClass="txt_area" TextMode="MultiLine" />

                                    </div>
                                </div>
                                <div class="form_row clearfix">
                                    <div class="div_txtbox left">
                                        <asp:Button ID="btn_send" Text="Send" runat="server" OnClick="btn_send_Click" OnClientClick="return validate()"/>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                <div id="footer">
                    <div id="contact_details" class="col-sm-3">
                        <h5>CONTACT DETAILS</h5>
                        <p>
                            Mr. Niraj Kumar, C-299, New Ashok Nagar, New Delhi-110096
                            <br />
                            Tel:+91-011-22040967,
                            <br />
                            +91-9810070303 , 8527070303
                            <br />
                            Email: mechinstru@gmail.com
                        </p>
                    </div>
                    <div id="quick_links" class="col-sm-3">
                        <h5>QUICK LINKS</h5>
                        <p><a href="#">Laboratory Gas Generators</a></p>
                        <p><a href="#">Industrail Gas Generators</a></p>
                        <p><a href="#">High Pressure Nitrogen Gas Generators</a></p>
                        <p><a href="#">Oxygen Gas Generators</a></p>
                        <p><a href="#">Water Seprators</a></p>
                    </div>
                    <div id="follow_us" class="col-sm-3">
                        <h5>FOLLOW US ON</h5>
                        <div id="twitter_link" class="clearfix">
                            <p class="left">Twitter</p>
                            <img src="Assets/images/twitter-icon.png" alt="Twitter link"/>
                        </div>
                        <div id="facebook_link" class="clearfix">
                            <p class="left">Facebook</p>
                            <img src="Assets/images/logo-facebook.png" alt="Facebook link" />
                        </div>
                    </div>
                    <div id="site_nav" class="col-sm-3">
                        <h5>SITE NAVIGATION</h5>
                        <p><a href="index.html">Homepage</a></p>
                        <p><a href="aboutus.html">About Us</a></p>
                        <p><a href="service.aspx">Servise</a></p>
                        <p><a href="contactus.html">Contact Us</a></p>
                    </div>
                </div>
            </div>
        </footer>
        <div id="copyright_stat">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <p>@ MechInstru Pvt Ltd. All Rights Reserved || Designed &amp; Developed By <span id="designer_name">Anuj Kumar Pal &amp; Abhishek Raj</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        window.jQuery || document.write('<script src="assets/javascript/jquery-1.10.2.min.js"><\/script>')
    </script>
    <script src="Assets/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>
