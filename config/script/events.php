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
    echo("Event info: " . $id);
}

if (isset($_GET['del'])) {
    $id = $_GET['del'];
    mysqli_query($conn, "DELETE FROM events WHERE ev_id=$id");
    echo '
            <script language = "javascript">
                window.alert("SUCCESS: Event Deleted");
                window.location.href="../../layout/admin/dashboard/view.php";
            </script>';
}

?>