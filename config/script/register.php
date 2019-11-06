<?php
session_start();
$conn = mysqli_connect('localhost', 'root', '', 'ersystem');

if (isset($_GET['register'])) {
    $ev_id = $_GET['register'];
    $user_nim = $_SESSION['user_nim'];

    //ambil depe stu id buat mo semaso
    $results = mysqli_query($conn, "SELECT * FROM students WHERE stu_nim = '$user_nim'"); 
    $row = mysqli_fetch_array($results);

    // header("location:../../layout/admin/edit_event/view.php?id=".$id);
    echo("Event: ". $ev_id);
    echo("User : ". $row['stu_id']);
    $id = $row['stu_id'];

    $code = generate_code($id, $ev_id);
    $date = date("Y-m-d H:i:s"); //mysql date format

    $sql = "INSERT INTO registrations(reg_code, reg_time, reg_pay_status, students_stu_id, events_ev_id) VALUES ('$code','$date',FALSE,'$id','$ev_id')";

    

    if (mysqli_query($conn, $sql)) {
        // echo "New record created successfully";
        echo '
            <script language = "javascript">
                window.alert("SUCCESS: Event Saved");
                window.location.href="../../layout/user/dashboard/view.php";
            </script>';
        // header("location:../../layout/admin/add_event/add.php");  
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

function generate_code($id, $ev_id){
    
    $generate = "REGS" . $id . $ev_id . date("Ymd");
    //date Ymd example $today = date("Ymd");  output 20010310

    return $generate;
}


?>