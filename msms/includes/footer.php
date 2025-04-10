<?php
include('includes/dbconnection.php');
session_start();
error_reporting(0);

if(isset($_POST['sub'])) {
    $email = $_POST['email'];
    $query = mysqli_query($con, "insert into tblsubscriber(Email) value('$email')");
    if ($query) {
        echo "<script>alert('Your subscribe successfully!.');</script>";
        echo "<script>window.location.href ='index.php'</script>";
    } else {
        echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
}
?>
<div class="footer">
    <div class="container">
        <div class="footer-block">
            <div class="row">
                <!-- Thông tin công ty -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="footer-widget">
                        <h2 class="widget-title">RootCuts Barber</h2>
                        <ul class="listnone contact">
                            <li><i class="fa fa-map-marker"></i> 1337 Hack Street, CyberVille, Netland</li>
                            <li><i class="fa fa-phone"></i> +1337-000-1337</li>
                            <li><i class="fa fa-envelope-o"></i> <a href="mailto:contact@rootcuts.barber">contact@rootcuts.barber</a></li>
                        </ul>
                        <p class="tagline" style="margin-top: 10px;"><em>"Trim with Precision. Style with Root Access."</em></p>
                    </div>
                </div>

                <!-- Social -->
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-widget footer-social">
                        <h2 class="widget-title">Social Feed</h2>
                        <ul class="listnone">
                            <li><a href="#"> <i class="fa fa-facebook"></i> Facebook</a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i> Google Plus</a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i> Linked In</a></li>
                            <li><a href="#"> <i class="fa fa-youtube"></i> YouTube</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Newsletter -->
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                    <div class="footer-widget widget-newsletter">
                        <h2 class="widget-title">Newsletters</h2>
                        <p>Enter your email address to receive new styles, tips, and updates directly to your inbox.</p>
                        <form method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter your email address" name="email">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit" value="submit" name="sub">Subscribe</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Tiny Footer -->
            <div class="tiny-footer">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="copyright-content text-center">
                            <p>© RootCuts Barber - All Rights Reserved</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.tiny footer block -->
        </div>
    </div>
</div>
