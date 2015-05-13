                                            var freqData = [{
                                                    State: 'B.AVG',
                                                    freq: {
                                                        MIN: 0.25,
                                                        DET: 0.26,
                                                        LAvg: 0.26
                                                    }
                                                }, {
                                                    State: 'B.SLG',
                                                    freq: {
                                                        MIN: 0.31,
                                                        DET: 0.33,
                                                        LAvg: 0.33
                                                    }
                                                }, {
                                                    State: 'B.OBP',
                                                    freq: {
                                                        MIN: 0.39,
                                                        DET: 0.42,
                                                        LAvg: 0.41
                                                    }
                                                }, {
                                                    State: 'B.OPS',
                                                    freq: {
                                                        MIN: 0.73,
                                                        DET: 0.77,
                                                        LAvg: 0.74
                                                    }
                                                }, {
                                                    State: 'P.ERA',
                                                    freq: {
                                                        MIN: 4.78,
                                                        DET: 4.34,
                                                        LAvg: 4.34
                                                    }
                                                }, {
                                                    State: 'P.WHIP',
                                                    freq: {
                                                        MIN: 1.49,
                                                        DET: 1.38,
                                                        LAvg: 1.36
                                                    }
                                                }, {
                                                    State: 'P.AVG',
                                                    freq: {
                                                        MIN: 0.28,
                                                        DET: 0.27,
                                                        LAvg: 0.27
                                                    }
                                                }, {
                                                    State: 'P.OPS',
                                                    freq: {
                                                        MIN: 0.78,
                                                        DET: 0.74,
                                                        LAvg: 0.74
                                                    }
                                                }
                                                // ,{State:'IN',freq:{team_A:797, team_B:1849}}
                                                // ,{State:'KS',freq:{team_A:162, team_B:379}}
                                            ];

                                            dashboard('#dashboard1', freqData);
