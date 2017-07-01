<?php

require_once 'config.php';
require_once 'database.php';

try {
    $db = new Database($db_name, $db_user, $db_pass, $db_host);
} catch (DatabaseException $db_exc) {
    echo 'Error to connect db';die;
}

$res = $db->select('countries');
$countries = $res->result_array();

$counts = array();
if (is_array($countries) && count($countries)) {
    foreach ($countries as $country) {
        $counts[$country['code']] = $country['code'];
    }
}

for($i=1; $i <= 10000; $i++) {
    for($j=1; $j<= 3; $j++) {
        foreach ($counts as $cnts) {
            $db->insert('counter', array(
                'action' => $j,
                'country' => $cnts,
                'date' => date('Y-m-d',strtotime($date1 . "-$i days"))
            ));
        }
    }
}