<?php
require_once 'config.php';
require_once 'database.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $error = array();
//    $postdata = file_get_contents("php://input");
    $data = json_decode(file_get_contents('php://input'), true);

    $event = $data['event'];
    $country = $data['country'];
    if(!isset($event)) {
        $error[] = "Please set event type";
    }
    if(!isset($country)) {
        $error[] = "Please set country";
    }
    if (!$error) {
        
        try {
            $db = new Database($db_name, $db_user, $db_pass, $db_host);
        } catch (DatabaseException $db_exc) {
            echo 'Error to connect db';die;
        }
        
        $res = $db->select('counter', array(
            'action' => $event,
            'country' => $country,
            'date' => date('Y-m-d')
        ));
        $events = $res->result_array();
        if (!$events) {
            $db->insert('counter', array(
                'action' => $event,
                'country' => $country,
                'date' => date('Y-m-d')
            ));
        } else {
            $db->update('counter', array(
                'action' => $event,
                'country' => $country,
                'date' => date('Y-m-d'),
                'counter' => ++$events[0]['counter'],
            ), array(
                'id' => $events[0]['id']
            ));
        }
    }
}
