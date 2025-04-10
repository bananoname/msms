<?php
$domain_chinh = "rootcutsbarber.com"; 
if ($_SERVER['HTTP_HOST'] !== $domain_chinh) {
    $redirect_url = "https://$domain_chinh" . $_SERVER['REQUEST_URI'];
    header("Location: $redirect_url", true, 301); 
    exit();
}
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>RootCuts Barber || Contact Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700%7cMontserrat:400,500,600,700" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <?php include_once('includes/header.php');?>

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-caption">
                        <h2 class="page-title">Contact RootCuts Barber</h2>
                        <div class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li><a href="index.php">Home</a></li>
                                <li class="active">Contact us</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="widget widget-contact">
                        <?php
                        $ret = mysqli_query($con,"select * from tblpage where PageType='contactus'");
                        while ($row = mysqli_fetch_array($ret)) {
                        ?>
                        <h3 class="widget-title">Contact Info</h3>
                        <address>
                            <strong>Address:</strong><br> <?php echo $row['PageDescription']; ?><br><br>
                            <abbr title="Phone">Phone:</abbr> <?php echo $row['MobileNumber']; ?><br>
                        </address>
                        <address>
                            <strong>Email:</strong><br> <?php echo $row['Email']; ?>
                        </address>
                        <address>
                            <strong>Opening Hours:</strong><br> <?php echo $row['Timing']; ?>
                        </address>

                        <!-- FLAG{rootcuts_ctf_hidden_in_source} -->
                        <?php } ?>
                    </div>

                    <div class="widget widget-social">
                        <div class="social-circle">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="well-block">
                        <?php
                        $ret = mysqli_query($con,"select * from tblpage where PageType='aboutus'");
                        while ($row = mysqli_fetch_array($ret)) {
                        ?>
                        <h1><?php echo $row['PageTitle']; ?></h1>
                        <h5 class="small-title">Your style. Your roots. Your way.</h5>
                        <p><?php echo $row['PageDescription']; ?></p>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include_once('includes/footer.php');?>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menumaker.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/sticky-header.js"></script>
</body>

</html>
