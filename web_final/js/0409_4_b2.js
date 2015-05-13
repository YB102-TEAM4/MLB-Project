                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        CWS: 0.273,
                                                        KC: 0.294,//1
                                                        LAvg: 0.267
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        CWS: 0.399,
                                                        KC: 0.454,//2
                                                        LAvg: 0.417
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        CWS: 0.331,
                                                        KC: 0.339,//3
                                                        LAvg: 0.327
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        CWS: 0.730,
                                                        KC: 0.792,//4
                                                        LAvg: 0.744
                                                    }
                                                }, {
                                                   State: 'P.ERA',
                                                   freq: {
                                                        CWS: 4.220,
                                                        KC: 3.310,    //5
                                                        LAvg: 4.341
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        CWS: 1.330,
                                                        KC: 1.170,//6
                                                        LAvg: 1.363
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        CWS: 0.252,
                                                        KC: 0.237,//7
                                                        LAvg: 0.266
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        CWS: 0.702,
                                                        KC: 0.642,//8
                                                        LAvg: 0.743
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard4', freqData);
