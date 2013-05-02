<?php
/**
* A simple php script to save log to the database.
* Run simple_as3_logger.sql script on your database and then update the dbinfo in this file.
* Save the link to this file to the LogWriter class's dbServerURL.
* author: Faisal Rahman
**/
if($_POST['auth_string']!="f5a666ce1cf64709e2bdf6bd517cf71c19acbae4")
		exit("authentication failed.");

/**
* DB info. Fill this up.
**/
$server_ = "";
$user_ = "";
$password_ = "";
$database_ = "";

$logger_name = $_POST['logger_name'];
$class_name = $_POST['class_name'];
$log_msg = $_POST['log_msg'];
$data = $_POST['data'];

$sql = new mysqli($server_,$user_,$password_,$database_); 
$query = $sql->prepare("INSERT INTO `simple_as3_logger` (`logger_name`, `class_name`, `log_msg`, `data`) VALUES (?,?,?,?);");
$query->bind_param("ssss", $logger_name, $class_name, $log_msg, $data);

$query->execute();
?>