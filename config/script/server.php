<?php
    function start_server(){
        // session_start();
        // $db = mysqli_connect('localhost', 'root', '', 'ersystem');
        $server_name = "localhost";
        $username = "root";
        $password = "";
        $database = "ersystem";

        $conn = mysqli_connect($server_name, $username, $password, $database);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        //echo "Connected successfully";
    }
    
    
?>