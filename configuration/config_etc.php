<?php
// error_reporting(0);
include 'config_connect.php';

date_default_timezone_set("Asia/Jakarta");

$baseurl = "indotory";
$queryback = "SELECT * FROM backset";
$resultback = mysqli_query($koneksi, $queryback);
$rowback = mysqli_fetch_assoc($resultback);
$baseurl = $rowback['url'];
