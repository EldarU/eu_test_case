<?php
require_once 'config.php';
require_once 'database.php';

try {
    $db = new Database($db_name, $db_user, $db_pass, $db_host);
} catch (DatabaseException $db_exc) {
    echo 'Error to connect db';die;
}

$res = $db->select('countries');
$states = $res->result_array();

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <div id="sb-site">
            <div id="page-wrapper">
                <div id="page-content-wrapper">
                    <div id="page-content">
                        <div class="container">
                            <div class="row">
                                <div class="form">
                                    <?php include_once 'form.php';?>
                                </div>
                                <?php include_once 'table.php';?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>