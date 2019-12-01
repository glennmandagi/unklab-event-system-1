<?php
session_start();
$conn = mysqli_connect('localhost', 'root', '', 'ersystem');

if (isset($_GET['register'])) {
    $ev_id = $_GET['register'];
    $user_id = $_SESSION['user_id'];

    //ambil depe stu id buat mo semaso
    // $results = mysqli_query($conn, "SELECT * FROM students WHERE stu_nim = '$user_nim'"); 
    // $row = mysqli_fetch_array($results);

    // header("location:../../layout/admin/edit_event/view.php?id=".$id);
    //echo("Event: ". $ev_id);
    // echo("User : ". $row['stu_id']);
    // $id = $row['stu_id'];
    //echo("User: " . $user_id);

    $code = generate_code($user_id, $ev_id);
    $date = date("Y-m-d H:i:s"); //mysql date format

    $query = "SELECT * FROM registrations";

    $results = mysqli_query($conn, $query);

    //tambah cek barang dulu
    //$sql = "SELECT "

    $sql = "INSERT INTO registrations(reg_code, reg_time, reg_pay_status, students_stu_id, events_ev_id) VALUES ('$code','$date',FALSE,'$user_id','$ev_id')";

    // midtrans($code);

    if (mysqli_query($conn, $sql)) {
        // echo "New record created successfully";
        midtrans($code, $ev_id, $user_id, $date);    
        // header("location:../../layout/admin/add_event/add.php");  
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

function midtrans($code, $ev_id, $user_id){

    $conn = mysqli_connect('localhost', 'root', '', 'ersystem');

    // $test = mysqli_query($conn, "SELECT reg_code AS code, reg_time AS time, students_stu_id AS stu_id, events_stu_id AS ev_id FROM registrations WHERE reg_code = '$code'");
    $results = mysqli_query($conn, "SELECT * FROM events WHERE ev_id = '$ev_id'");
    $row_event = mysqli_fetch_array($results);
    $price = $row_event['ev_price'];
    $ev_name = $row_event['ev_title'];

    $results = mysqli_query($conn, "SELECT * FROM students WHERE stu_id = '$user_id'");
    $row_user = mysqli_fetch_array($results);

    $arr = array();

    $arr['code'] = $code;
    $arr['ev_id'] = $ev_id;
    $arr['user_id'] = $user_id;
    $arr['ev_price'] = $price;
    $arr['ev_title'] = $ev_name;
    $arr['f_name'] = $row_user['stu_first_name'];
    $arr['l_name'] = $row_user['stu_last_name'];
    $arr['email'] = $row_user['stu_email'];

    // session_start();
    $_SESSION['array'] = $arr;

    include "../midtrans-php-master/examples/snap/checkout-process-simple-version.php";

   
}

function generate_code($id, $ev_id){
    
    $generate = "REGS" . $id . $ev_id . date("Ymd");
    //date Ymd example $today = date("Ymd");  output 20010310

    return $generate;
}



if (isset($_GET['del'])) {
    $code = $_GET['del'];
    mysqli_query($conn, "DELETE FROM registrations WHERE reg_code ='$code'");
}


?>