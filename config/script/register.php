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
    echo("Event: ". $ev_id);
    // echo("User : ". $row['stu_id']);
    // $id = $row['stu_id'];
    echo("User: " . $user_id);

    $code = generate_code($user_id, $ev_id);
    $date = date("Y-m-d H:i:s"); //mysql date format

    $sql = "INSERT INTO registrations(reg_code, reg_time, reg_pay_status, students_stu_id, events_ev_id) VALUES ('$code','$date',FALSE,'$user_id','$ev_id')";

    // midtrans($code);

    if (mysqli_query($conn, $sql)) {
        // echo "New record created successfully";
        midtrans($code);    
        // header("location:../../layout/admin/add_event/add.php");  
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

function midtrans($code){

    $conn = mysqli_connect('localhost', 'root', '', 'ersystem');

    // $test = mysqli_query($conn, "SELECT reg_code AS code, reg_time AS time, students_stu_id AS stu_id, events_stu_id AS ev_id FROM registrations WHERE reg_code = '$code'");
    $results = mysqli_query($conn, "SELECT * FROM registrations WHERE reg_code = '$code'");
    $row_trans = mysqli_fetch_array($results);

    // print_r($row_trans);

    $time = $row_trans['reg_time'];
    $stu_id = $row_trans['students_stu_id'];
    $ev_id = $row_trans['events_ev_id'];

    echo($ev_id);
    echo($stu_id);
    echo($code);

    // $results = mysqli_query($conn, "SELECT * FROM events WHERE ev_id = '$ev_id'");
    // $row_event = mysqli_fetch_array($results);

    // echo("Event id          : " .'<br>'. $ev_id .'<br>'.'<br>');
    // echo("Event Title       : " .'<br>'. $row_event['ev_title'] .'<br>'.'<br>');
    // echo("Event Date        : " .'<br>'. $row_event['ev_date_start'] . " to " . $row_event['ev_date_end'] .'<br>'.'<br>');
    // echo("Event Price       : " .'<br>'. $row_event['ev_price'] .'<br>'.'<br>');
    // echo("Event Location    : " .'<br>'. $row_event['ev_location'] .'<br>'.'<br>');
    // echo("Event Description : " .'<br>'. $row_event['ev_desc'] .'<br>'.'<br>');
    

    // echo '
    //         <script language = "javascript">
    //             window.alert("SUCCESS: Event Saved");
    //             window.location.href="../../layout/user/dashboard/view.php";
    //         </script>';

    // <a href="?delete=$code">Delete</a>
    echo "<a href='?del='" . $code . "'>" . "Del" . "</a>";
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