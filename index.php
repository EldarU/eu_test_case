<?php
date_default_timezone_set("Europe/Kiev");
ini_set('magic_quotes_gpc', 0);
ini_set('magic_quotes_runtime', 0); 

require_once 'config.php';
require_once 'database.php';

try {
    $db = new Database($db_name, $db_user, $db_pass, $db_host);
} catch (DatabaseException $db_exc) {
    echo 'Error to connect db';die;
}

$res = $db->select('countries');
$states = $res->result_array();
echo "<pre>";
print_r($states);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
//    $db->select('counter', $where)
}

