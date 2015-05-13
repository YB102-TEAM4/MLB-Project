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
            margin-left: 420px;
            padding: 0px;
            height: 100%;
            width: 100%;
        }
    </style>

    <title>MLB NL West</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

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
                                    <img class="slide-image" src="pictures/ari.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/col_tory2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/lad_kershaw.jpg" alt="">
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
                            <img src="pictures/ari_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://arizona.diamondbacks.mlb.com/index.jsp?c_id=ari&tcid=mm_mlb_sitelist">Arizona Diamondbacks</a>
                                </h4>
                                <p>World Series titles(1):<a target="_blank" href="http://en.wikipedia.org/wiki/1983_World_Series">2001</a> 
														 
														  </p>
								<p>NL Pennants(1):2001</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 65-97</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/col_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://colorado.rockies.mlb.com/index.jsp?c_id=col&tcid=mm_mlb_sitelist">Colorado Rockies</a>
                                </h4>
                                <p>World Series titles(0):<a target="_blank" href="http://en.wikipedia.org/wiki/Colorado_Rockies">none</a> 
								</p>
								<p></p>
								<p>AL Pennants (1):2007</p>
								<p></p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 69-93</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/lad_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://losangeles.dodgers.mlb.com/index.jsp?c_id=la&tcid=mm_mlb_sitelist">Los Angeles Dodgers</a>
                                </h4>
                                <p>World Series titles(6):<a target="_blank" href="http://en.wikipedia.org/wiki/1988_World_Series">1988</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1981_World_Series">1981</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/Los_Angeles_Dodgers">...</a>
														  </p>
								<p>AL Pennants(21):1956, 1959, 1963, 1965, 1966, 1974, 1977, 1978, 1981, 1988 ...</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 95-67</p>
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
                            <img src="pictures/sd_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://sandiego.padres.mlb.com/index.jsp?c_id=sd&tcid=mm_mlb_sitelist">San Diego Padres</a>
                                </h4>
                                <p>World Series titles(0):<a target="_blank" href="http://en.wikipedia.org/wiki/San_Diego_Padres">none</a> 
								</p>
								<p>AL Pennants(2):1998 1984</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 83-79</p>
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
                            <img src="pictures/sf_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://sanfrancisco.giants.mlb.com/index.jsp?c_id=sf&tcid=mm_mlb_sitelist">San Francisco Giants</a>
                                </h4>
                                <p>World Series titles(6):<a target="_blank" href="http://en.wikipedia.org/wiki/2014_World_Series">2014</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/2012_World_Series">2012</a>
                                                          <a target="_blank" href="http://en.wikipedia.org/wiki/San_Francisco_Giants">...</a>
								</p>
								<p>NL Pennants(23): 2014 2012 2010 2002 1989 1962 1954 ...</p>
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
    <!-- /.container -->
     <hr width="1100px">

    <div class="row">
            <div class="col-lg-13">
                <h3>2010~2014 NL Central Attendance</h3>
            </div>
        </div>
    <div class="row text-center2">
                <svg id="chart1"></svg>
                    <script>

                        var data = [
                            {
                                "key" : "Arizona Diamondbacks",
                                "values" : []
                            },
                            {
                                "key" : "Colorado Rockies",
                                "values" : []
                            },
                            {
                                "key" : "Los Angeles Dodgers",
                                "values" : []
                            },
                            {
                                "key" : "San Diego Padres",
                                "values" : []
                            },
                            {
                                "key" : "San Francisco Giants",
                                "values" : []
                            }
                        ];
                        <?php
                        $link = new mysqli('localhost', 'mlb', 'mlb', 'test');
                        $sql = "SELECT * FROM `attences_nl_west`";
                        $query = $link->query($sql);
                        foreach ($query as $data) {
                            $game = $data['id'];
                            $ari = $data['ari_per'];
                            $col = $data['col_per'];
                            $lad = $data['lad_per'];
                            $sdp = $data['sdp_per'];
                            $sfg = $data['sfg_per'];
                        ?>
                        data[0].values.push([<?php echo $game; ?>, <?php echo $ari?>]);
                        data[1].values.push([<?php echo $game; ?>, <?php echo $col?>]);
                        data[2].values.push([<?php echo $game; ?>, <?php echo $lad?>]);
                        data[3].values.push([<?php echo $game; ?>, <?php echo $sdp?>]);
                        data[4].values.push([<?php echo $game; ?>, <?php echo $sfg?>]);
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
