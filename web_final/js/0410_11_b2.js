                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        PIT: 0.258,
                                                        MIL: 0.300,//1
                                                        LAvg: 0.267
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        PIT: 0.418,
                                                        MIL: 0.453,//2
                                                        LAvg: 0.417
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        PIT: 0.316,
                                                        MIL: 0.352,//3
                                                        LAvg: 0.327
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        PIT: 0.734,
                                                        MIL: 0.805,//4
                                                        LAvg: 0.744
                                                    }
                                                }, {
                                                    State: 'P.ERA',
                                                    freq: {
                                                        PIT: 4.480,
                                                        MIL: 3.300,    //5
                                                        LAvg: 4.341
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        PIT: 1.330,
                                                        MIL: 1.240,//6
                                                        LAvg: 1.363
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        PIT: 0.259,
                                                        MIL: 0.243,//7
                                                        LAvg: 0.266
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        PIT: 0.747,
                                                        MIL: 0.682,//8
                                                        LAvg: 0.743
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard11', freqData);
