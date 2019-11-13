<?php

$conn = mysqli_connect('localhost', 'root', '', 'ersystem');

if (isset($_POST['save'])) {

    $title = $_POST['title'];
    $date_s = $_POST['date_start'];
    $date_e = $_POST['date_end'];
    $price = $_POST['price'];
    $desc = $_POST['desc'];
    $location = $_POST['location'];
    $capacity = $_POST['capacity'];

    $sql = "INSERT INTO events (ev_title, ev_date_start, ev_date_end, ev_price, ev_desc, ev_location, ev_capacity) VALUES ('$title', '$date_s', '$date_e', '$price', '$desc', '$location', '$capacity')";
    
    if (mysqli_query($conn, $sql)) {
        // echo "New record created successfully";
        echo '
            <script language = "javascript">
                window.alert("SUCCESS: Event Saved");
                window.location.href="../../layout/admin/dashboard/view.php";
            </script>';
        // header("location:../../layout/admin/add_event/add.php");  
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    
}
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    header("location:../../layout/admin/edit_event/view.php?id=".$id);
    echo("Edit");
}
if (isset($_GET['add'])) {
    
    header("location:../../layout/admin/add_event/view.php");
    
}

if (isset($_POST['modify'])) {
    $id = $_GET['modify'];
    

}


if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $title = $_POST['title'];
    $date_s = $_POST['date_start'];
    $date_e = $_POST['date_end'];
    $price = $_POST['price'];
    $desc = $_POST['desc'];
    $location = $_POST['location'];
    $capacity = $_POST['capacity'];

    $sql = "UPDATE events SET ev_title='$title', ev_date_start='$date_s', ev_date_end='$date_e', ev_price='$price', ev_desc='$desc', ev_location='$location', ev_capacity='$capacity' WHERE ev_id = $id";

    if ($conn->query($sql) === TRUE) {
        echo '
            <script language = "javascript">
                window.alert("SUCCESS: Event Saved");
                window.location.href="../../layout/admin/dashboard/view.php";
            </script>';
    } else {
        echo "Error updating record: ".$conn->error;
    }
    
}
if (isset($_GET['info'])) {
    $id = $_GET['info'];

    //load event to search capacity
    $results = mysqli_query($conn, "SELECT COUNT(students_stu_id) AS num_user FROM registrations WHERE events_ev_id = '$id'");
    $row_regist = mysqli_fetch_array($results);
    $occupied = $row_regist['num_user'];

    echo("Event id          : " .'<br>'. $id .'<br>'.'<br>');
    echo("Event Title       : " .'<br>'. $row_event['ev_title'] .'<br>'.'<br>');
    echo("Event Date        : " .'<br>'. $row_event['ev_date_start'] . " to " . $row_event['ev_date_end'] .'<br>'.'<br>');
    echo("Event Price       : " .'<br>'. $row_event['ev_price'] .'<br>'.'<br>');
    echo("Event Location    : " .'<br>'. $row_event['ev_location'] .'<br>'.'<br>');
    echo("Event Description : " .'<br>'. $row_event['ev_desc'] .'<br>'.'<br>');
    echo("Event Capacity    : " .'<br>'. $capacity .'<br>'.'<br>');
    echo("Seat Occupied     : " .'<br>'. $occupied .'<br>'.'<br>');
    echo("Seat Left         : " .'<br>'. ($capacity - $occupied) .'<br>'.'<br>');

   

    
    

    
}

if (isset($_GET['del'])) {
    $id = $_GET['del'];
    mysqli_query($conn, "DELETE FROM registrations WHERE events_ev_id='$id'");
    mysqli_query($conn, "DELETE FROM events WHERE ev_id='$id'");
    echo '
            <script language = "javascript">
                window.alert("SUCCESS: Event Deleted");
                window.location.href="../../layout/admin/dashboard/view.php";
            </script>';
}

?>