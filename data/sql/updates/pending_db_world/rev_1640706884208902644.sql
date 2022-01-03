INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1640706884208902644');

-- Pathing for Zixil Entry: 3537 with broadcast text 1119
SET @NPC := 15424;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-339.08447,`position_y`=-708.55786,`position_z`=57.732002 WHERE `guid`=@NPC;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=0,`position_x`=-339.08447,`position_y`=-708.55786,`position_z`=57.732002 WHERE `guid`=15423;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-339.08447,-708.55786,57.732002,0,0,0,0,100,0),
(@PATH,2,-336.89163,-703.821,57.73033,0,0,0,0,100,0),
(@PATH,3,-333.06693,-693.71875,56.41289,0,0,0,0,100,0),
(@PATH,4,-329.35367,-686.03156,54.499302,0,0,0,0,100,0),
(@PATH,5,-327.40356,-677.53015,54.624302,0,0,0,0,100,0),
(@PATH,6,-332.22388,-668.096,54.999302,0,0,0,0,100,0),
(@PATH,7,-345.60928,-662.3104,55.197285,0,0,0,0,100,0),
(@PATH,8,-358.86954,-661.1246,55.20241,0,0,0,0,100,0),
(@PATH,9,-374.27164,-662.8136,55.75783,0,0,0,0,100,0),
(@PATH,10,-392.11914,-665.55066,54.72878,0,0,0,0,100,0),
(@PATH,11,-409.21683,-666.3024,54.54609,0,0,0,0,100,0),
(@PATH,12,-416.2853,-655.1526,54.54609,0,0,0,0,100,0),
(@PATH,13,-421.986,-640.2118,54.54609,0,0,0,0,100,0),
(@PATH,14,-427.84915,-616.10675,54.525482,0,0,0,0,100,0),
(@PATH,15,-433.21384,-596.8273,54.185234,0,0,0,0,100,0),
(@PATH,16,-437.994,-587.2003,53.53852,0,0,0,0,100,0),
(@PATH,17,-453.6142,-580.78406,51.427925,0,0,0,0,100,0),
(@PATH,18,-468.29388,-575.52734,48.818092,0,0,0,0,100,0),
(@PATH,19,-489.96643,-569.1262,45.222878,0,0,0,0,100,0),
(@PATH,20,-507.00705,-563.87836,42.321056,0,0,0,0,100,0),
(@PATH,21,-524.43396,-559.64606,39.471935,0,0,0,0,100,0),
(@PATH,22,-539.50836,-561.0137,37.34804,0,0,0,0,100,0),
(@PATH,23,-559.90924,-565.14105,34.1498,0,0,0,0,100,0),
(@PATH,24,-573.0137,-572.12695,32.822147,0,0,0,0,100,0),
(@PATH,25,-591.203,-575.02454,32.296757,0,0,0,0,100,0),
(@PATH,26,-605.5533,-574.23566,31.161648,0,0,0,0,100,0),
(@PATH,27,-616.58167,-570.6215,29.617214,0,0,0,0,100,0),
(@PATH,28,-628.10956,-564.4541,27.710861,0,0,0,0,100,0),
(@PATH,29,-636.7936,-562.5114,26.95497,0,0,0,0,100,0),
(@PATH,30,-649.9629,-559.7359,26.099745,0,0,0,0,100,0),
(@PATH,31,-660.2105,-559.6624,25.705946,0,0,0,0,100,0),
(@PATH,32,-670.0506,-554.995,26.132019,0,0,0,0,100,0),
(@PATH,33,-682.8604,-548.2092,28.618103,0,300000,0,5,100,0),
(@PATH,34,-677.19806,-551.1631,27.861511,0,0,0,0,100,0),
(@PATH,35,-664.38153,-556.76935,25.619032,0,0,0,0,100,0),
(@PATH,36,-650.53784,-558.7303,25.978895,0,0,0,0,100,0),
(@PATH,37,-637.3378,-561.6134,26.950819,0,0,0,0,100,0),
(@PATH,38,-624.0219,-567.60284,28.349392,0,0,0,0,100,0),
(@PATH,39,-610.3862,-572.4553,30.485622,0,0,0,0,100,0),
(@PATH,40,-596.96094,-576.44727,31.803593,0,0,0,0,100,0),
(@PATH,41,-586.41486,-574.6165,32.678593,0,0,0,0,100,0),
(@PATH,42,-575.09607,-572.42926,32.803593,0,0,0,0,100,0),
(@PATH,43,-549.46924,-562.7703,35.49892,0,0,0,0,100,0),
(@PATH,44,-527.7352,-559.8969,38.965343,0,0,0,0,100,0),
(@PATH,45,-504.52524,-565.6621,42.766125,0,0,0,0,100,0),
(@PATH,46,-482.64844,-572.71484,46.457497,0,0,0,0,100,0),
(@PATH,47,-458.10562,-579.3172,50.753365,0,0,0,0,100,0),
(@PATH,48,-441.6072,-584.287,53.53852,0,0,0,0,100,0),
(@PATH,49,-434.8615,-591.30066,53.91352,0,0,0,0,100,0),
(@PATH,50,-432.48138,-605.6045,54.525482,0,0,0,0,100,0),
(@PATH,51,-426.84772,-625.11523,54.525482,0,0,0,0,100,0),
(@PATH,52,-421.2753,-641.10156,54.54609,0,0,0,0,100,0),
(@PATH,53,-416.98752,-653.9329,54.54609,0,0,0,0,100,0),
(@PATH,54,-406.3135,-668.5088,54.653206,0,0,0,0,100,0),
(@PATH,55,-393.87622,-671.4856,54.510963,0,0,0,0,100,0),
(@PATH,56,-378.75272,-671.5858,55.345436,0,0,0,0,100,0),
(@PATH,57,-357.72644,-669.5459,56.24712,0,0,0,0,100,0),
(@PATH,58,-335.50964,-668.9298,55.08916,0,0,0,0,100,0),
(@PATH,59,-323.99915,-676.05524,54.624302,0,70000,0,0,100,0),
(@PATH,60,-317.4317,-680.16614,54.874302,0,0,0,0,100,0),
(@PATH,61,-306.12885,-682.2515,56.067173,0,0,0,0,100,0),
(@PATH,62,-291.30664,-688.25055,57.268143,0,0,0,0,100,0),
(@PATH,63,-280.16217,-698.71124,56.17244,0,0,0,0,100,0),
(@PATH,64,-271.37848,-709.6708,57.150124,0,0,0,0,100,0),
(@PATH,65,-261.95718,-720.7515,58.218475,0,0,0,0,100,0),
(@PATH,66,-247.9011,-725.83856,58.742157,0,0,0,0,100,0),
(@PATH,67,-230.10861,-725.6553,60.555325,0,0,0,0,100,0),
(@PATH,68,-213.51851,-722.95337,61.453762,0,0,0,0,100,0),
(@PATH,69,-197.71364,-720.3577,62.880352,0,0,0,0,100,0),
(@PATH,70,-180.22993,-717.4284,63.603252,0,0,0,0,100,0),
(@PATH,71,-161.80443,-716.44696,63.81913,0,0,0,0,100,0),
(@PATH,72,-144.78784,-716.32965,64.63701,0,0,0,0,100,0),
(@PATH,73,-123.17525,-715.26117,65.0272,0,0,0,0,100,0),
(@PATH,74,-103.90226,-714.8122,65.62144,0,0,0,0,100,0),
(@PATH,75,-81.8867,-716.41864,67.9681,0,0,0,0,100,0),
(@PATH,76,-64.75125,-717.73364,68.19478,0,0,0,0,100,0),
(@PATH,77,-53.112217,-717.8241,68.576126,0,0,0,0,100,0),
(@PATH,78,-40.891224,-716.9174,68.77754,0,0,0,0,100,0),
(@PATH,79,-30.230577,-715.5244,69.40481,0,0,0,0,100,0),
(@PATH,80,-23.22385,-714.82996,69.73098,0,0,0,0,100,0),
(@PATH,81,-18.953993,-720.5429,69.30276,0,0,0,0,100,0),
(@PATH,82,-18.432238,-732.3585,67.235374,0,0,0,0,100,0),
(@PATH,83,-19.985895,-744.7164,64.95592,0,0,0,0,100,0),
(@PATH,84,-23.631783,-753.4538,63.632435,0,0,0,0,100,0),
(@PATH,85,-22.66238,-766.7746,61.312195,0,0,0,0,100,0),
(@PATH,86,-18.10471,-782.87195,59.99774,0,0,0,0,100,0),
(@PATH,87,-15.578613,-794.9383,59.387634,0,0,0,0,100,0),
(@PATH,88,-23.634766,-807.59375,58.1461,0,0,0,0,100,0),
(@PATH,89,-35.67177,-820.696,57.503563,0,0,0,0,100,0),
(@PATH,90,-44.658585,-826.5436,57.079735,0,0,0,0,100,0),
(@PATH,91,-52.500923,-837.3567,56.570187,0,0,0,0,100,0),
(@PATH,92,-53.125652,-848.25476,56.387325,0,0,0,0,100,0),
(@PATH,93,-52.161186,-862.1998,55.73596,0,0,0,0,100,0),
(@PATH,94,-47.80447,-870.87305,55.724693,0,0,0,0,100,0),
(@PATH,95,-36.719456,-873.6499,56.39144,0,0,0,0,100,0),
(@PATH,96,-23.572104,-875.98663,58.061092,0,0,0,0,100,0),
(@PATH,97,-23.572104,-875.98663,58.061092,3.909537553787231445,300000,0,5,100,0),
(@PATH,98,-33.12847,-873.4835,56.714413,0,0,0,0,100,0),
(@PATH,99,-44.63216,-869.10736,55.87362,0,0,0,0,100,0),
(@PATH,100,-51.32612,-862.2703,55.727413,0,0,0,0,100,0),
(@PATH,101,-54.51009,-850.6543,56.241085,0,0,0,0,100,0),
(@PATH,102,-51.482964,-837.34766,56.691036,0,0,0,0,100,0),
(@PATH,103,-44.45009,-826.2848,57.10708,0,0,0,0,100,0),
(@PATH,104,-32.232098,-816.8551,57.6461,0,0,0,0,100,0),
(@PATH,105,-22.883951,-809.3676,58.02598,0,0,0,0,100,0),
(@PATH,106,-14.765354,-797.04767,59.262634,0,0,0,0,100,0),
(@PATH,107,-17.327963,-788.4305,59.512634,0,0,0,0,100,0),
(@PATH,108,-21.681314,-772.18024,60.788513,0,0,0,0,100,0),
(@PATH,109,-23.204536,-757.9027,62.802113,0,0,0,0,100,0),
(@PATH,110,-21.343262,-745.8244,64.689804,0,0,0,0,100,0),
(@PATH,111,-17.602865,-734.54816,66.89635,0,0,0,0,100,0),
(@PATH,112,-18.747993,-722.26886,69.033226,0,0,0,0,100,0),
(@PATH,113,-21.484863,-715.58905,69.646996,0,0,0,0,100,0),
(@PATH,114,-32.48128,-714.4401,69.41018,0,0,0,0,100,0),
(@PATH,115,-46.85422,-717.4475,68.52754,0,0,0,0,100,0),
(@PATH,116,-64.853516,-717.6582,68.15254,0,0,0,0,100,0),
(@PATH,117,-80.79649,-716.3673,68.09896,0,0,0,0,100,0),
(@PATH,118,-96.35167,-714.6938,66.60726,0,0,0,0,100,0),
(@PATH,119,-113.01834,-713.706,65.2772,0,0,0,0,100,0),
(@PATH,120,-125.11513,-715.5454,64.95078,0,0,0,0,100,0),
(@PATH,121,-152.75201,-716.5194,64.26201,0,0,0,0,100,0),
(@PATH,122,-169.90744,-717.66766,63.918438,0,0,0,0,100,0),
(@PATH,123,-192.78874,-719.6028,63.096172,0,0,0,0,100,0),
(@PATH,124,-202.83398,-721.64453,62.578762,0,0,0,0,100,0),
(@PATH,125,-216.81223,-725.4614,61.23428,0,0,0,0,100,0),
(@PATH,126,-229.73416,-726.78253,60.565823,0,0,0,0,100,0),
(@PATH,127,-240.28152,-728.3242,59.56955,0,0,0,0,100,0),
(@PATH,128,-255.15266,-718.40735,58.88864,0,0,0,0,100,0),
(@PATH,129,-275.56332,-710.2474,57.224342,0,0,0,0,100,0),
(@PATH,130,-288.30972,-698.64294,57.400223,0,0,0,0,100,0),
(@PATH,131,-294.24008,-681.4444,56.701492,0,0,0,0,100,0),
(@PATH,132,-310.7278,-676.8312,54.999302,0,0,0,0,100,0),
(@PATH,133,-321.25558,-676.7678,54.624302,0,0,0,0,100,0),
(@PATH,134,-328.47754,-685.73016,54.499302,0,0,0,0,100,0),
(@PATH,135,-332.9809,-694.9509,56.56884,0,0,0,0,100,0),
(@PATH,136,-342.12836,-714.309,57.73669,0,1080000,0,0,100,0);
-- Say text script
DELETE FROM `waypoint_scripts` WHERE `id`=5;
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES
(5,0,0,0,0,1119,0,0,0,0,7);