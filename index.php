<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <div id="sb-site">
            <div id="loading">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
            <div id="page-wrapper">
                <div id="page-content-wrapper">
                    <div id="page-content">
                        <div class="container">
                            <div class="row">
                                <div class="form">
                                    <?php include_once 'form.php';?>
                                </div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Date</th>
                                            <th>Country</th>
                                            <th>Event</th>
                                            <th>Views</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>2017-07-01</td>
                                            <td>US</td>
                                            <td>views</td>
                                            <td>50000</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>2017-07-01</td>
                                            <td>US</td>
                                            <td>plays</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>2017-07-02</td>
                                            <td>US</td>
                                            <td>views</td>
                                            <td>3000</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">4</th>
                                            <td>2017-07-01</td>
                                            <td>CA</td>
                                            <td>clicks</td>
                                            <td>123</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<style>
    .form {
        border: 1px solid #ccccff;
        border-radius: 4px;
        width: 100%;
    }
</style>