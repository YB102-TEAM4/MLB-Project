                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        TOR: 0.258,
                                                        BAL: 0.254,//1
                                                        LAvg: 0.267
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        TOR: 0.429,
                                                        BAL: 0.411,//2
                                                        LAvg: 0.417
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        TOR: 0.333,
                                                        BAL: 0.308,//3
                                                        LAvg: 0.327
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        TOR: 0.762,
                                                        BAL: 0.719,//4
                                                        LAvg: 0.744
                                                    }
                                                }, {
                                                    State: 'P.ERA',
                                                    freq: {
                                                        TOR: 4.450,
                                                        BAL: 4.890,    //5
                                                        LAvg: 4.341
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        TOR: 1.380,
                                                        BAL: 1.380,//6
                                                        LAvg: 1.363
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        TOR: 0.263,
                                                        BAL: 0.257,//7
                                                        LAvg: 0.266
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        TOR: 0.726,
                                                        BAL: 0.749,//8
                                                        LAvg: 0.743
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard1', freqData);
