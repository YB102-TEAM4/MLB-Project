                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        KC: 0.294,
                                                        LAA: 0.307,//1
                                                        LAvg: 0.267
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        KC: 0.454,
                                                        LAA: 0.467,//2
                                                        LAvg: 0.417
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        KC: 0.339,
                                                        LAA: 0.350,//3
                                                        LAvg: 0.327
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        KC: 0.792,
                                                        LAA: 0.818,//4
                                                        LAvg: 0.744
                                                    }
                                                }, {
                                                    State: 'P.ERA',
                                                    freq: {
                                                        KC: 3.310,
                                                        LAA: 3.090,    //5
                                                        LAvg: 4.341
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        KC: 1.170,
                                                        LAA: 1.250,//6
                                                        LAvg: 1.363
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        KC: 0.237,
                                                        LAA: 0.241,//7
                                                        LAvg: 0.266
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        KC: 0.642,
                                                        LAA: 0.666,//8
                                                        LAvg: 0.743
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard13', freqData);
