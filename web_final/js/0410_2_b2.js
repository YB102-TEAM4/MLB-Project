                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        DET: 0.266,
                                                        CLE: 0.271,//1
                                                        LAvg: 0.267
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        DET: 0.417,
                                                        CLE: 0.422,//2
                                                        LAvg: 0.417
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        DET: 0.333,
                                                        CLE: 0.328,//3
                                                        LAvg: 0.327
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        DET: 0.750,
                                                        CLE: 0.750,//4
                                                        LAvg: 0.744
                                                    }
                                                }, {
                                                    State: 'P.ERA',
                                                    freq: {
                                                        DET: 4.340,
                                                        CLE: 4.310,    //5
                                                        LAvg: 4.341
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        DET: 1.380,
                                                        CLE: 1.400,//6
                                                        LAvg: 1.363
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        DET: 0.268,
                                                        CLE: 0.276,//7
                                                        LAvg: 0.266
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        DET: 0.741,
                                                        CLE: 0.747,//8
                                                        LAvg: 0.743
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard2', freqData);
