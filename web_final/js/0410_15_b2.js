                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        SF: 0.242,
                                                        SD: 0.282,//1
                                                        LAvg: 0.267
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        SF: 0.395,
                                                        SD: 0.438,//2
                                                        LAvg: 0.417
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        SF: 0.322,
                                                        SD: 0.338,//3
                                                        LAvg: 0.327
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        SF: 0.717,
                                                        SD: 0.776,//4
                                                        LAvg: 0.744
                                                    }
                                                }, {
                                                    State: 'P.ERA',
                                                    freq: {
                                                        SF: 5.420,
                                                        SD: 3.540,    //5
                                                        LAvg: 4.341
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        SF: 1.420,
                                                        SD: 1.230,//6
                                                        LAvg: 1.363
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        SF: 0.289,
                                                        SD: 0.253,//7
                                                        LAvg: 0.266
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        SF: 0.800,
                                                        SD: 0.694,//8
                                                        LAvg: 0.743
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard15', freqData);
