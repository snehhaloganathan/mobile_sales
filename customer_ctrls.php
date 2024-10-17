<?php

$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "Mickey Mouse\n";
fwrite($myfile, $_REQUEST['type']);
$txt = "Minnie Mouse\n";
fwrite($myfile, $txt);
fclose($myfile);

if(isset($_REQUEST['type']) && $_REQUEST['type']=='store_customer'){
    require_once('classes/Login.php');
    $auth = new Login();

    $req_data = $_REQUEST['data'];

    print_r($req_data);
    //echo $req_data;

    //$res = $auth->login_customer();
}


?>