 $(function() {
                                            $(document).click(function() {
                                                Highcharts.setOptions({
                                                    colors: ['#7373B9', '#5CADAD']
                                                });

                                                // Build the chart
                                                $('#container12').highcharts({
                                                    chart: {
                                                        plotBackgroundColor: null,
                                                        plotBorderWidth: 0,
                                                        plotShadow: false
                                                    },
                                                    title: {
                                                        text: 'Win Prob.',
                                                        align: 'center',
                                                        verticalAlign: 'middle',
                                                        y: 50
                                                    },
                                                    tooltip: {
                                                        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                                                    },
                                                    plotOptions: {
                                                        pie: {
                                                            dataLabels: {
                                                                enabled: true,
                                                                distance: -50,
                                                                style: {
                                                                    fontWeight: 'bold',
                                                                    color: 'white',
                                                                    textShadow: '0px 1px 2px black'
                                                                }
                                                            },
                                                            startAngle: -90,
                                                            endAngle: 90,
                                                            center: ['50%', '75%']
                                                        }
                                                    },

                                                    series: [{
                                                        type: 'pie',
                                                        name: 'Win Prob.',
                                                        innerSize: '50%',
                                                        data: [
                                                            ['SF', 52.4],//第一隊的名字 勝率
                                                            ['ARI', 47.6]//第二隊的名字 勝率
                                                        ]

                                                    }]
                                                });
                                            });

                                        });