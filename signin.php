
<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/inputval.php');

if(isset($_POST['login']))
  {
    if ($_POST["verficationcode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')
    {
    echo "<script>alert('Incorrect captcha');</script>" ;
    }
    else{

    $email = Input::email($_POST['email']);
    $password=$_POST['password'];
    if (!empty($_POST['$email']) && !empty($_POST['$password'])) {
	             $username = trim(htmlspecialchars($_POST['password']));
	              $email = trim(htmlspecialchars($_POST['email']));}
    $query=mysqli_query($con,"select ID,Email,Password from tbluser where  Email='$email'  ");
    $row = mysqli_fetch_assoc($query);
    $hashpass = $row["Password"];
    $ret = $row["ID"];
    $verify=password_verify($password,$hashpass);
    if($verify){
    $_SESSION['pgasuid']=$ret;
    $_SESSION['last_login_timestmp']= time();
    $cookie_name['pgasaid']=$ret;
    $cookie_value = $ret;
    setcookie($cookie_name, $cookie_value,);
    setcookie($cookie_name, $cookie_value, time() + 3600, "/");
    header('location:index.php');
    if(!isset($_COOKIE[$cookie_name])) {
        echo "Cookie named '" . $cookie_name . "' is not set!";
    } else {

   }}
    else{
      $msg="Invalid Details.";
    }
}
}
  ?>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>

	<title>Paying Guest Accomodation System|| User Signin</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">=
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">

</head>

<body>
<?php include_once('includes/header.php');?>



	<!-- Start contact-page Area -->
	<section class="contact-page-area section-gap">
		<div class="container">
			<p style="text-align: center;color: red;font-size: 30px"><strong>Sign in</strong></p>
			<div class="row mt-80">
				<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
				<div class="col-lg-12">
					<form class="row contact_form" action="" method="post" id="" name="login">
						<div class="col-md-12">


							<div class="form-group">
								<input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" required="true">
							</div>
							<a href="forgot-password.php">Forgot Password?</a>

							<div class="form-group" style="padding-top: 20px">
								<input type="password" class="form-control" id="password" name="password" placeholder="Password" required="true">
							</div>
              <div class="form-group">
              <input type="text"   name="verficationcode" maxlength="5" autocomplete="off" required  style="width: 200px;"  placeholder="Enter Captcha" autofocus />&nbsp;
              <!--Cpatcha Image -->
              <img src="captcha.php">
              </div>

						</div>

						<div class="col-md-6 text-left">

							<button type="submit" value="login" name="login" class="btn primary-btn">Sign in</button>
						</div>
						<div class="col-md-6 text-left">
					<a href="register.php" class="btn primary-btn">Register</a>
						</div>

					</form>

				</div>
			</div>
		</div>
	</section>
	<!-- End contact-page Area -->

	<!-- start footer Area -->
	<?php include_once('includes/footer.php');?>
	<!-- End footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/ion.rangeSlider.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
