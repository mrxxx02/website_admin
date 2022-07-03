<?php 
$host       = "localhost";
$user       = "root";
$pass       = "";
$db         = "website_admin1";

$koneksi    = mysqli_connect($host,$user,$pass,$db);
if(!$koneksi){
    die("Gagal terkoneksi");
}