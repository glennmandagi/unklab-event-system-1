<?php
    
    if (isset($_POST['login'])) {
		$conn = mysqli_connect('localhost', 'root', '', 'ersystem');
    
        $username = mysqli_real_escape_string($conn, $_POST["username"]);  
        $password = mysqli_real_escape_string($conn, $_POST["password"]);  
        $query = "SELECT * FROM user WHERE user_name = '$username'";  
        // $cek_user = "SELECT * FROM user WHERE user_name = $user_name AND user_pass = $user_pass";
        $result = mysqli_query($conn,$query);
    
        // $row = $result->fetch_array(MYSQLI_ASSOC);

        if(mysqli_num_rows($result) > 0)  
           {  
                while($row = mysqli_fetch_array($result))  
                {  
                     if(password_verify($password, $row["user_pass"]))  
                     {  
                          //return true;  
                          $_SESSION["username"] = $username;  
                          header("location:../../layout/admin/dashboard.php");  
                        echo "masuk";
                     }  
                     else  
                     {  
                          //return false;  
                          echo '<script>alert("Wrong User Details")</script>';  
                     }  
                }  
           }  
           else  
           {  
                echo '<script>alert("Wrong User Details")</script>';  
                header("location:../../index.php");  
           } 
        
	}
?>