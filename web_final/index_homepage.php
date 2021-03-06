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
        }
        html, body, svg {
            margin: 0px;
            padding: 0px;
            height: 100%;
            width: 100%;
        }
    </style>

    <title>MLB Predictions Homepage</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

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
                        <a href="http://localhost/schduele.php">Schedule</a>
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

        
        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer">
            <h1>Introduction</h1>
            <p></p>
            <!--<p><a class="btn btn-primary btn-large">Call to action!</a>
            </p>-->
        </header>

        <hr>
        
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <iframe width="1160" height="722" src="http://www.powtoon.com/embed/eUvTozl1BjB/" frameborder="0"></iframe>
        </div>
        </div>

        <!-- Title -->
       <!--  <div class="row">
            <div class="col-lg-12">
                <h3>2010~2014 Attendance</h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
       <!-- <div class="row text-center2">
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
                                "key" : "Philadelphia Phillies",
                                "values" : []
                            },
                            {
                                "key" : "New York Mets",
                                "values" : []
                            },
                            {
                                "key" : "Baltimore Orioles",
                                "values" : []
                            },
                            {
                                "key" : "Washington Nationals",
                                "values" : []
                            }
                        ];
                        <?php
                        $link = new mysqli('localhost', 'mlb', 'mlb', 'test');
                        $sql = "SELECT * FROM `attences`";
                        $query = $link->query($sql);
                        foreach ($query as $data) {
                            $game = $data['id'];
                            $bal = $data['bal_per'];
                            $bos = $data['bos_per'];
                            $nym = $data['nym_per'];
                            $nyy = $data['nyy_per'];
                            $phi = $data['phi_per'];
                            $wsn = $data['wsn_per'];
                        ?>
                        data[0].values.push([<?php echo $game; ?>, <?php echo $bos?>]);
                        data[1].values.push([<?php echo $game; ?>, <?php echo $nyy?>]);
                        data[2].values.push([<?php echo $game; ?>, <?php echo $phi?>]);
                        data[3].values.push([<?php echo $game; ?>, <?php echo $nym?>]);
                        data[4].values.push([<?php echo $game; ?>, <?php echo $bal?>]);
                        data[5].values.push([<?php echo $game; ?>, <?php echo $wsn?>]);
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

                            // chart.xAxis.tickFormat(function(d) { return d3.time.format('%x')(new Date(d)) });
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
        <!-- /.row -->

        <hr>  
<!--         <div class="row text-center2">
                <svg id="chart2"></svg>
                    <script>

                        var data = [
                            {
                                "key" : "bos",
                                "values" : []
                            },
                            {
                                "key" : "nyy",
                                "values" : []
                            },
                            {
                                "key" : "phi",
                                "values" : []
                            },
                            {
                                "key" : "nym",
                                "values" : []
                            },
                            {
                                "key" : "bal",
                                "values" : []
                            },
                            {
                                "key" : "wsn",
                                "values" : []
                            }
                        ];
                        <?php
                        $link = new mysqli('localhost', 'mlb', 'mlb', 'test');
                        $year = 2010;
                        $sql = "SELECT * FROM `attences` WHERE year = '$year'";
                        $query = $link->query($sql);
                        foreach ($query as $data) {
                            $game = $data['id'];
                            $bal = $data['bal_per'];
                            $bos = $data['bos_per'];
                            $nym = $data['nym_per'];
                            $nyy = $data['nyy_per'];
                            $phi = $data['phi_per'];
                            $wsn = $data['wsn_per'];
                        ?>
                        data[0].values.push([<?php echo $game; ?>, <?php echo $bos?>]);
                        data[1].values.push([<?php echo $game; ?>, <?php echo $nyy?>]);
                        data[2].values.push([<?php echo $game; ?>, <?php echo $phi?>]);
                        data[3].values.push([<?php echo $game; ?>, <?php echo $nym?>]);
                        data[4].values.push([<?php echo $game; ?>, <?php echo $bal?>]);
                        data[5].values.push([<?php echo $game; ?>, <?php echo $wsn?>]);
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

                            // chart.xAxis.tickFormat(function(d) { return d3.time.format('%x')(new Date(d)) });
                            chart.yAxis.tickFormat(d3.format(',.2f'));

                            d3.select('#chart2')
                                .datum(data)
                                .transition().duration(1000)
                                .call(chart)
                                .each('start', function() {
                                    setTimeout(function() {
                                        d3.selectAll('#chart2 *').each(function() {
                                            if(this.__transition__)
                                                this.__transition__.duration = 1;
                                        })
                                    }, 0)
                                });

                            nv.utils.windowResize(chart.update);
                            return chart;
                        });

                    </script>

        </div> -->

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
