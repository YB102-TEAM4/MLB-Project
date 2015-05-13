<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="/build/nv.d3.css" rel="stylesheet" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.2/d3.min.js" charset="utf-8"></script>
    <script src="/build/nv.d3.js"></script>
     <style>
        text {
            font: 12px sans-serif;
        }
         svg {
            display: block;
            margin-top: 10px;
            margin-left: 320px;
            padding: 0px;
            height: 100%;
            width: 100%;
        }
    </style>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <title>MLB AL East</title>

    

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
                <a class="navbar-brand" href="index_homepage.php">MLB Predictions</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index_al_east.php">Teams</a>
                    </li>
                    <li>
                        <a href="http://localhost/index2.php">Schedule</a>
                    </li>
                    <li>
                        <a href="0408_prediction.html">Prediction</a>
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
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">American League</p>
                <div class="list-group">
                    <a href="index_al_east.php" class="list-group-item">East</a>
                    <a href="index_al_central.php" class="list-group-item">Central</a>
                    <a href="index_al_west.php" class="list-group-item">West</a>
                    
                </div>
                 <p class="lead">National League</p>
                <div class="list-group">
                     <a href="index_nl_east.php" class="list-group-item">East</a>
                    <a href="index_nl_central.php" class="list-group-item">Central</a>
                    <a href="index_nl_west.php" class="list-group-item">West</a>
					
                </div>

            </div>


            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
								<li data-target="#carousel-example-generic" data-slide-to="4"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="pictures/Pedroia_AP.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/yankees.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/2014-03-06_06S7001_.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="pictures/Evan-Longoria-Tampa-Bay-Rays-MLB.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="pictures/bluejays.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div style="height=360px weight=280px" class="thumbnail">
                            <img src="pictures/bal_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://baltimore.orioles.mlb.com/index.jsp?c_id=bal&tcid=mm_mlb_sitelist">Baltimore Orioles</a>
                                </h4>
                                <p>World Series titles(3):<a target="_blank" href="http://en.wikipedia.org/wiki/1983_World_Series">1983</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1970_World_Series">1970</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1966_World_Series">1966</a>
														  </p>
								<p>AL Pennants(7):1983 1979 1971 1970 1969 1966 1944</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 82-80</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/nyy_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://newyork.yankees.mlb.com/index.jsp?c_id=nyy&tcid=mm_mlb_sitelist">New York Yankees</a>
                                </h4>
                                <p>World Series titles(27):<a target="_blank" href="http://en.wikipedia.org/wiki/2009_World_Series">2009</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/2000_World_Series">2000</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/New_York_Yankees#World_Series_championships">...</a>
								</p>
								<p></p>
								<p>AL Pennants (40):2009 2003 2001 2000 1999 1998 1996 1981 ...</p>
								<p></p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 77-85</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/bos_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://boston.redsox.mlb.com/index.jsp?c_id=bos&tcid=mm_mlb_sitelist">Boston Red Sox</a>
                                </h4>
                                <p>World Series titles(8):<a target="_blank" href="http://en.wikipedia.org/wiki/2013_World_Series">2013</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/2007_World_Series">2007</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/Boston_Red_Sox#Other_notable_seasons_and_team_records">...</a>
														  </p>
								<p>AL Pennants(13):2013 2007 2004 1986 1975 1967 1946 1918 ...</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 89-73</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                   <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/tb_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://tampabay.rays.mlb.com/index.jsp?c_id=tb&tcid=mm_mlb_sitelist">Tampa Bay Rays</a>
                                </h4>
                                <p>World Series titles(0):<a target="_blank" href="http://en.wikipedia.org/wiki/Tampa_Bay_Rays">none</a> 
														  </p>
								<p>AL Pennants(1):2008</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 74-88</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/tor_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://toronto.bluejays.mlb.com/index.jsp?c_id=tor&tcid=mm_mlb_sitelist">Toronto Blue Jays</a>
                                </h4>
                                <p>World Series titles(2):<a target="_blank" href="http://en.wikipedia.org/wiki/1993_World_Series">1993</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1992_World_Series">1992</a>
														  </p>
								<p>AL Pennants(2):1993 1992</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 84-78</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- <div class="col-sm-4 col-lg-4 col-md-4">
                        <h4><a href="#">Like this template?</a>
                        </h4>
                        <p>If you like this template, then check out <a target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this tutorial</a> on how to build a working review system for your online store!</p>
                        <a class="btn btn-primary" target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View Tutorial</a>
                    </div>
					-->
                </div>

            </div>

        </div>

    </div>
    <hr width="1100px">

    <div class="row">
            <div class="col-lg-13">
                <h3>2010~2014 AL East Attendance</h3>
            </div>
        </div>
    <div class="row text-center2">
                <svg id="chart1"></svg>
                    <script>

                        var data = [
                            {
                                "key" : "Boston Red Sox",
                                "values" : []
                            },
                            {
                                "key" : "New York Yankees",
                                "values" : []
                            },
                            {
                                "key" : "Tampa Bay Rays",
                                "values" : []
                            },
                            {
                                "key" : "Toronto Blue Jays",
                                "values" : []
                            },
                            {
                                "key" : "Baltimore Orioles",
                                "values" : []
                            }
                        ];
                        <?php
                        $link = new mysqli('localhost', 'mlb', 'mlb', 'test');
                        $sql = "SELECT * FROM `attences_al_east`";
                        $query = $link->query($sql);
                        foreach ($query as $data) {
                            $game = $data['id'];
                            $bal = $data['bal_per'];
                            $bos = $data['bos_per'];
                            $tor = $data['tor_per'];
                            $nyy = $data['nyy_per'];
                            $tbr = $data['tbr_per'];
                        ?>
                        data[0].values.push([<?php echo $game; ?>, <?php echo $bos?>]);
                        data[1].values.push([<?php echo $game; ?>, <?php echo $nyy?>]);
                        data[2].values.push([<?php echo $game; ?>, <?php echo $tbr?>]);
                        data[3].values.push([<?php echo $game; ?>, <?php echo $bal?>]);
                        data[4].values.push([<?php echo $game; ?>, <?php echo $tor?>]);
                        <?php
                        }
                        ?>

                        var colors = d3.scale.category20();
                        var keyColor = function(d, i) {return colors(d.key)};

                        var chart;
                        nv.addGraph(function() {
                            chart = nv.models.stackedAreaChart()
                                .useInteractiveGuideline(true)
                                .x(function(d) { return d[0] })
                                .y(function(d) { return d[1] })
                                .controlLabels({stacked: "Stacked"})
                                .color(keyColor)
                                .duration(300);

                            //chart.xAxis.tickFormat(function(d) { return d3.time.format('%x')(new Date(d)) });
                            chart.yAxis.tickFormat(d3.format(',.0f'));

                            d3.select('#chart1')
                                .datum(data)
                                .transition().duration(1000)
                                .call(chart)
                                .each('start', function() {
                                    setTimeout(function() {
                                        d3.selectAll('#chart1 *').each(function() {
                                            if(this.__transition__)
                                                this.__transition__.duration = 1;
                                        })
                                    }, 0)
                                });

                            nv.utils.windowResize(chart.update);
                            return chart;
                        });

                    </script>

        </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; YB102 Team4 2015</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>

</body>

</html>
