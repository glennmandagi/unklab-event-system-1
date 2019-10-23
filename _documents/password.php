<?php

    $user_pass = 'admin';
    echo $user_pass;

    echo "<p>&nbsp;</p>";

    $hashed_pass = password_hash($user_pass, PASSWORD_BCRYPT);
    echo $hashed_pass;

    echo "<p>&nbsp;</p>";
    $encypted_pass = md5($user_pass);
    echo $encypted_pass;
?>