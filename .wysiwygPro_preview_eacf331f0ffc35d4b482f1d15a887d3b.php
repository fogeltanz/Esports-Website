<?php
if ($_GET['randomId'] != "nrUCSH7lfplJD5uX3cvN2nNgXhSZlXlBNP8IuhjqCJxW6fOgYaEkl9TddIVnQa7g") {
    echo "Access Denied";
    exit();
}

// display the HTML code:
echo stripslashes($_POST['wproPreviewHTML']);

?>  
