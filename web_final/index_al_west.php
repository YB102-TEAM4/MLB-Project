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

    <title>MLB AL West</title>

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
                                    <img class="slide-image" src="pictures/texas_yu_davish.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/laa_albert_pujols.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="pictures/sea_cano.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="pictures/oak_teams.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="pictures/altuve-e1412485788574.jpg" alt="">
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
                            <img src="pictures/hou_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://houston.astros.mlb.com/index.jsp?c_id=hou&tcid=mm_mlb_sitelist">Houston Astros</a>
                                </h4>
                                <p>World Series titles(0):<a target="_blank" href="http://en.wikipedia.org/wiki/Houston_Astros">none</a> 
														  </p>
								<p>NL Pennants(1):2005</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 72-90</p>
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
                            <img src="pictures/ana_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://losangeles.angels.mlb.com/index.jsp?c_id=ana&tcid=mm_mlb_sitelist">Los Angeles Angels</a>
                                </h4>
                                <p>World Series titles(1):<a target="_blank" href="http://en.wikipedia.org/wiki/1989_World_Series">2002</a> 
								</p>
								<p></p>
								<p>AL Pennants (1):2002</p>
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
                            <img src="pictures/oak_1200x630.jpg" alt="">
                            <div style="height=300px" class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://oakland.athletics.mlb.com/index.jsp?c_id=oak&tcid=mm_mlb_sitelist">Oakland Athletics</a>
                                </h4>
                                <p>World Series titles(9):<a target="_blank" href="http://en.wikipedia.org/wiki/1989_World_Series">1989</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1974_World_Series">1974</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/Oakland_Athletics#Achievements">...</a>
														  </p>
								<p>AL Pennants(15):1990 1989 1988 1974 1973 1972 1931 1930 ...</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 81-81</p>
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
                            <img src="pictures/sea_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://seattle.mariners.mlb.com/index.jsp?c_id=sea&tcid=mm_mlb_sitelist">Seattle Mariners</a>
                                </h4>
                                <p>World Series titles(3):<a target="_blank" href="http://en.wikipedia.org/wiki/2001_World_Series">2001</a> 
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1997_World_Series">1997</a>
														  <a target="_blank" href="http://en.wikipedia.org/wiki/1995_World_Series">1995</a>
														  </p>
								<p>AL Pennants(1):2008</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 95-67</p>
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
                            <img src="pictures/tex_1200x630.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="http://texas.rangers.mlb.com/index.jsp?c_id=tex&tcid=mm_mlb_sitelist">Texas Rangers</a>
                                </h4>
                                <p>World Series titles(0):<a target="_blank" href="http://en.wikipedia.org/wiki/Texas_Rangers_%28baseball%29">none</a> 
								</p>
								<p>AL Pennants(2):2011 2000</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">2015 P.Record: 73-89</p>
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
                <h3>2010~2014 AL West Attendance</h3>
            </div>
        </div>
    <div class="row text-center2">
                <svg id="chart1"></svg>
                    <script>

                        var data = [
                            {
                                "key" : "Houston Astros",
                                "values" : []
                            },
                            {
                                "key" : "Los Angeles Angels of Anaheim",
                                "values" : []
                            },
                            {
                                "key" : "Oakland Athletics",
                                "values" : []
                            },
                            {
                                "key" : "Seattle Mariners",
                                "values" : []
                            },
                            {
                                "key" : "Texas Rangers",
                                "values" : []
                            }
                        ];
                        <?php
                        $link = new mysqli('localhost', 'mlb', 'mlb', 'test');
                        $sql = "SELECT * FROM `attences_al_west`";
                        $query = $link->query($sql);
                        foreach ($query as $data) {
                            $game = $data['id'];
                            $hou = $data['hou_per'];
                            $laa = $data['laa_per'];
                            $oak = $data['oak_per'];
                            $sea = $data['sea_per'];
                            $tex = $data['tex_per'];
                        ?>
                        data[0].values.push([<?php echo $game; ?>, <?php echo $hou?>]);
                        data[1].values.push([<?php echo $game; ?>, <?php echo $laa?>]);
                        data[2].values.push([<?php echo $game; ?>, <?php echo $oak?>]);
                        data[3].values.push([<?php echo $game; ?>, <?php echo $sea?>]);
                        data[4].values.push([<?php echo $game; ?>, <?php echo $tex?>]);
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
