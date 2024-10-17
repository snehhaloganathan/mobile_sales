<?php

$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "Mickey Mouse\n";
fwrite($myfile, $_REQUEST['type']);
$txt = "Minnie Mouse\n";
fwrite($myfile, $txt);
fclose($myfile);

if(isset($_REQUEST['type']) && $_REQUEST['type']=='store_customer'){
    require_once('Login.php');
    $auth = new Login();

    $req_data = $_REQUEST['data'];

    $settings = new SystemSettings();

    foreach($req_data as $k => $v){
        $settings->set_userdata($k,$v);
    }
    $settings->set_userdata('login_type',2);

    $response = array();
    $response['success']=1;
    echo json_encode($response);
    exit();

    //$res = $auth->login_customer();
}


?>