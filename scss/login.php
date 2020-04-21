<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (isset($_POST['login']))
{
		$username=($_POST['username']);
		$password = ($_POST['password']);
		$decryption_iv = '1234567891011121';
		$decryption_key =$_SESSION['key'];
		$ciphering = "AES-128-CTR";
		$option=0;
		$decryption=openssl_decrypt ($_COOKIE['captcha_code'], $ciphering,
			$decryption_key, $option, $decryption_iv);
		if($username == "")
    {
			$errorMsg=  "error : You did not enter a username.";
			exit($errorMsg);
		}
		elseif(!preg_match("/^[a-zA-Z][a-zA-Z0-9_-]+[a-zA-Z0-9]$/",$username))
    {
		  $errorMsg= 'error : You did not enter a valid username.';
		  exit($errorMsg);
		}
    elseif(!(strlen($username)>6 && strlen($username)<30))
    {
			$errorMsg= 'error:enter required length username .';
			exit($errorMsg);
		}
		elseif($password == "")
    {
			$errorMsg=  "error : You did not enter a password.";
			exit($errorMsg);
		}
		elseif(!preg_match("/^(?=.{10,})(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$/",$password))
    {
		  $errorMsg= 'error : You did not enter valid a password.';
		  exit($errorMsg);
		}
		elseif(!(strlen($password)>=10 && strlen($password)<128))
    {
			$errorMsg= 'error:enter required length password .';
			exit($errorMsg);
		}
		elseif($decryption != $_POST['captcha'])
		{
						$msg = 'Invalid Captcha';
						exit($decryption);
		}
    else
    {
      $query=mysqli_query($con,"select ID from tbluser where  Email='$email' && Password='$password' ");
      $ret=mysqli_fetch_array($query);
      if($ret>0){
        $_SESSION['pgasuid']=$ret['ID'];
       header('location:index.php');
      }
      else{
      $msg="Invalid Details.";
      }
    }
