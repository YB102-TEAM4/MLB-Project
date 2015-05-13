<?php
date_default_timezone_set('Asia/Taipei');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<!--<link href="bootstrap-daterangepicker-master/bootstrap.css" rel="stylesheet">-->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="all" href="css/daterangepicker-bs3.css" />
    <script type="text/javascript" src="js/jquery_2.js"></script>
    <script type="text/javascript" src="js/bootstrap_2.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/daterangepicker.js"></script>

    <title>MLB Predictions - Schduele</title>
	

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet"> 

    <!-- Custom CSS -->
    <style>
    body {
        padding-top: 70px;
        /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
    }
    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                 <a class="navbar-brand" href="index_homepage.html">MLB Predictions</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index_al_east.html">Teams</a>
                    </li>
                    <li>
                        <a href="http://localhost/index2.php">Schedule</a>
                    </li>
                    <li>
                        <a href="0409_prediction.html">Prediction</a>
                    </li>
                    <li>
                        <a href="http://mlb.mlb.com/home">MLB.com</a>
                    </li>
                    <li>
                        <a href="https://www.sportslottery.com.tw/">Sport lottery</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
            <div class="well2">
                <h4><strong>Pick A Date!! (4/6~10/4)</strong></h4>
               <form class="form-horizontal">
                 <fieldset>
                  <div class="control-group">
                    <div class="controls">
                     <div class="input-prepend input-group">
                       <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span><input type="text" style="width: 200px" name="game_date" id="game-date" class="form-control" value="" > 
                     </div>
                    </div>
                  </div>
                 </fieldset>
               </form>

               <script type="text/javascript">
               $(document).ready(function() {
                  $('#game-date').daterangepicker({ 
                    singleDatePicker: true,
                    format: 'YYYY-MM-DD'
                  });
                  // $(document.body).off('change', '#game-date');
                  // $(document.body).on('change', '#game-date', function() {
                  //   $.ajax({
                  //     url: 'get_data.php',
                  //     type: 'post',
                  //     data: {
                  //       type: 'date',
                  //       value : $('#game-date').val()
                  //     },
                  //     dataType: 'html',
                  //     success: function(html_block) {
                  //       $('#result-div').html(html_block);
                  //     }
                  //   });
                  // });
               });
               </script>
            </div>
            <div class="well3">
                <h4><strong>Pick A Team!!</strong></h4>
               <form class="form-horizontal">
                 <fieldset>
                  <div class="control-group">
                    <div class="controls">
                     <select id="game-team" class="form-control">
                        <option value="">Team Name</option>
                        <option value="Baltimore">AL-Baltimore Orioles</option>
                        <option value="Boston">AL-Boston Red Sox</option>
                        <option value="Chicago White Sox">AL-Chicago White Sox</option>
                        <option value="Cleveland">AL-Cleveland Indians</option>
                        <option value="Detroit">AL-Detroit Tigers</option>
                        <option value="Houston">AL-Houston Astros</option>
                        <option value="Kansas City">AL-Kansas City Royals</option>
                        <option value="LA Angels">AL-Los Angeles Angels</option>
                        <option value="Minnesota">AL-Minnesota Twins</option>
                        <option value="NY Yankees">AL-New York Yankees</option>
                        <option value="Oakland">AL-Oakland Athletics</option>
                        <option value="Seattle">AL-Seattle Mariners</option>
                        <option value="Tampa Bay">AL-Tampa Bay Rays</option>
                        <option value="Texas">AL-Texas Rangers</option>
                        <option value="Toronto">AL-Toronto Blue Jays</option>
                        <option value="Arizona">NL-Arizona Diamondbacks</option>
                        <option value="Atlanta">NL-Atlanta Braves</option>
                        <option value="Chicago Cubs">NL-Chicago Cubs</option>
                        <option value="Cincinnati">NL-Cincinnati Reds</option>
                        <option value="Colorado">NL-Colorado Rockies</option>
                        <option value="LA Dodgers">NL-Los Angeles Dodgers</option>
                        <option value="Miami">NL-Miami Marlins</option>
                        <option value="Milwaukee">NL-Milwaukee Brewers</option>
                        <option value="NY Mets">NL-New York Mets</option>
                        <option value="Philadelphia">NL-Philadelphia Phillies</option>
                        <option value="Pittsburgh">NL-Pittsburgh Pirates</option>
                        <option value="San Diego">NL-San Diego Padres</option>
                        <option value="San Francisco">NL-San Francisco Giants</option>
                        <option value="St. Louis">NL-St. Louis Cardinals</option>
                        <option value="Washington">NL-Washington Nationals</option>                
                     </select>   
                    </div>
                  </div>
                 </fieldset>
               </form>
            </div>			
            <button type="submit" id="query-games-btn" class="btn btn-default2">Submit</button>
            <script>
            $(document).ready(function() {
                $(document.body).off('click', '#query-games-btn');
                $(document.body).on('click', '#query-games-btn', function() {
                    var game_date = $('#game-date').val();
                    var game_team = $('#game-team').val();
                    if (game_date || game_team) {
                        $.ajax({
                            url: 'query_games.php',
                            type: 'post',
                            data: {
                                date: game_date,
                                team: game_team
                            },
                            dataType: 'html',
                            success: function(html_block) {
                                $('#result-div').html(html_block);
                            }
                        });
                    }
                });
            });
            </script>
            <div style="clear:both;"></div>
            <div class="well4" id="result-div"></div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.1 
    <script src="js/jquery.js"></script>-->
	
	
    <!-- Bootstrap Core JavaScript 
    <script src="js/bootstrap.min.js"></script>-->

</body>

</html>
