<?php

/**
 * Description of config
 *
 * @author Eldar
 */
$db_host = 'localhost';
$db_name = 'events';
$db_user = 'root';
$db_pass = '1';

const VIEW = 1;
const PLAY = 2;
const CLICK = 3;
const JSON = 10;
const CSV = 11;

function getEventType($type) {
    switch($type) {
        case VIEW : return 'View';
        case PLAY : return 'Play';
        case CLICK : return 'Click';
    }
}

function getResultType($type) {
    switch($type) {
        case JSON : return 'JSON';
        case CSV : return 'CSV';
    }
}