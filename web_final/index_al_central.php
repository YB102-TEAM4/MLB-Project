<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="/build/nv.d3.css" rel="stylesheet" type="text/css">
    <script src="/build/d3.min.js" charset="utf-8"></script>
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

    <title>MLB AL Central</title>

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
                                    <img class="slide-image" src="pictures/169671398.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/031014-MLB-Cleveland-Indians-PI.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/151997149.0.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="pictures/royalswin1.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="pictures/joe-mauer-minnesota-twins-player-2013-2014-wallpaper.jpg" alt="">
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
                            <img src="pictures/cws_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://chicago.whitesox.mlb.com/index.jsp?c_id=cws">Chicago White Sox</a>
                                </h4>
                                <p>World Series titles(3):<a target="_blank" href="http://en.wikipedia.org/wiki/2005_World_Series">2005</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1917_World_Series">1917</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1906_World_Series">1906</a>
														  </p>
								<p>AL Pennants(6):2005 1959 1917 1917 1906 1901</p>
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
                            <img src="pictures/cle_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://cleveland.indians.mlb.com/index.jsp?c_id=cle">Cleveland Indians</a>
                                </h4>
                                <p>World Series titles(2):<a target="_blank" href="http://en.wikipedia.org/wiki/1948_World_Series">1948</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1920_World_Series">1920</a>
								</p>
								<p></p>
								<p>AL Pennants (5):1997 1995 1954 1975 1920</p>
								<p></p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 92-70</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="pictures/det_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://detroit.tigers.mlb.com/index.jsp?c_id=det">Detroit Tigers</a>
                                </h4>
                                <p>World Series titles(4):<a target="_blank" href="http://en.wikipedia.org/wiki/1984_World_Series">1984</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1968_World_Series">1968</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/Detroit_Tigers#Best seasons in Detroit Tigers history">...</a>
														  </p>
								<p>AL Pennants(11):2012 2006 1984 1968 1945 1940 1935 1934 ...</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 87-75</p>
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
                            <img src="pictures/kc_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://kansascity.royals.mlb.com/index.jsp?c_id=kc">Kansas City Royals</a>
                                </h4>
                                <p>World Series titles(1):<a target="_blank" href="http://en.wikipedia.org/wiki/1985_World_Series">1985</a> 
														  </p>
								<p>AL Pennants(3):2014 1985 1980</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 78-84</p>
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
                            <img src="pictures/min_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://toronto.bluejays.mlb.com/index.jsp?c_id=tor&tcid=mm_mlb_sitelist">Minnesota Twins</a>
                                </h4>
                                <p>World Series titles(3):<a target="_blank" href="http://en.wikipedia.org/wiki/1993_World_Series">1991</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1992_World_Series">1987</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1992_World_Series">1924</a>
														  </p>
								<p>AL Pennants(6):1991 1987 1965 1933 1925 1924</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 67-95</p>
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
                <h3>2010~2014 AL Central Attendance</h3>
            </div>
        </div>
    <div class="row text-center2">
                <svg id="chart1"></svg>
                    <script>

                        var data = [
                            {
                                "key" : "Minnesota Twins",
                                "values" : []
                            },
                            {
                                "key" : "Detroit Tigers",
                                "values" : []
                            },
                            {
                                "key" : "Cleveland Indians",
                                "values" : []
                            },
                            {
                                "key" : "Kansas City Royals",
                                "values" : []
                            },
                            {
                                "key" : "Chicago White Sox",
                                "values" : []
                            }
                        ];
                        <?php
                        $link = new mysqli('localhost', 'mlb', 'mlb', 'test');
                        $sql = "SELECT * FROM `attences_al_center`";
                        $query = $link->query($sql);
                        foreach ($query as $data) {
                            $game = $data['id'];
                            $chw = $data['chw_pre'];
                            $cle = $data['cle_pre'];
                            $det = $data['det_pre'];
                            $kcr = $data['kcr_pre'];
                            $min = $data['min_pre'];
                        ?>
                        data[0].values.push([<?php echo $game; ?>, <?php echo $min?>]);
                        data[1].values.push([<?php echo $game; ?>, <?php echo $det?>]);
                        data[2].values.push([<?php echo $game; ?>, <?php echo $cle?>]);
                        data[3].values.push([<?php echo $game; ?>, <?php echo $kcr?>]);
                        data[4].values.push([<?php echo $game; ?>, <?php echo $chw?>]);
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
