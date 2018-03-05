<?php
    $host="localhost";
    $user="root";
    $password="";
    $dbname="login";

    $connection=new mysqli($host,$user,$password,$dbname);

    if($connection->connect_errno){
        exit("Database Connection Failed Resaon:".$connection->connect_error);
    }






?>