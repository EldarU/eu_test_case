<?php
require 'config.php';
require 'database.php';

try {
    $db = new Database($db_name, $db_user, $db_pass, $db_host);
} catch (DatabaseException $db_exc) {
    echo 'Error to connect db';die;
}

function getActionTitle($id) {
    switch($id) {
        case VIEW: 
            return 'VIEW';
            break;
        case PLAY:
            return 'PLAY';
            break;
        case CLICK:
            return 'CLICK';
            break;
    }
}

function getReport($db) {
    $arrRes = array();
    $query = $db->query("SELECT cn.`country`, cn.`action`, SUM(cn.counter) AS `count`
                        FROM counter AS cn
                        INNER JOIN  (SELECT `country`, SUM(`counter`) AS `sum`
                            FROM `counter`
                            GROUP BY country
                            ORDER BY `sum` DESC
                            LIMIT 5) AS cntrs ON cntrs.country=cn.country
                        WHERE `date` >= DATE(NOW()) - INTERVAL 7 DAY
                        GROUP BY country, `action`
                        ORDER BY `count` DESC");
    $res = $query->result_array();
    if (!empty($res)) {
        foreach ($res as $value) {
            $arrRes[$value['country']][getActionTitle($value['action'])] = $value['count'];
        }
    }
    return $arrRes;
}

function return_json($db) {
    $data = getReport($db);
    if (empty($data)) {
        echo "There are no any data to report";
        return;
    }
    header('Content-disposition: attachment; filename=file.json');
    header('Content-Type: application/json;charset=ascii');
    echo json_encode($data);
}

function return_csv($db) {
    $data = getReport($db);
    if (empty($data)) {
        echo "There are no any data to report";
        return;
    }
    $f = fopen('php://memory', 'w');
    fputcsv($f, array("Country","Event","Counter"), ";"); 
    foreach ($data as $country => $line) { 
        foreach ($line as $event => $count) {
            fputcsv($f, array($country, $event, $count), ";"); 
        }
        
    }
    fseek($f, 0);
    header('Content-Type: application/csv');
    header('Content-Disposition: attachment; filename=report.csv;');
    fpassthru($f);
}
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $action = $_GET['action'];
    switch($action) {
        case "json":
            return_json($db);
            break;
        case "csv":
            return_csv($db);
            break;
        default:
            echo "Please select report format";
            break;
    }
}