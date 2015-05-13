<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
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
</head>
<body class='with-3d-shadow with-transitions'>

<svg id="chart1"></svg>

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
    $sql = "SELECT * FROM `attences`";
    $query = $link->query($sql);
    foreach ($query as $data) {
        $game = $data['id'];
        $bal = $data['bal'];
        $bos = $data['bos'];
        $nym = $data['nym'];
        $nyy = $data['nyy'];
        $phi = $data['phi'];
        $wsn = $data['wsn'];
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
</body>
</html>