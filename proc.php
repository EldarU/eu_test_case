<?php
require_once 'config.php';
require_once 'database.php';

try {
    $db = new Database($db_name, $db_user, $db_pass, $db_host);
} catch (DatabaseException $db_exc) {
    echo 'Error to connect db';die;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $error = array();
    $event = strval($_POST['event']);
    $country = strval($_POST['country']);
    if(!isset($event)) {
        $error[] = "Please set event type";
    }
    if(!isset($country)) {
        $error[] = "Please set country";
    }
    if (!$error) {
        $res = $db->select('counter', array(
            'action' => $event,
            'country' => $country,
            'date' => date('Y-m-d')
        ));
        $event = $res->result_array();
        echo "<pre>hererrerere<br/>";
        print_r($event);
    }
}
