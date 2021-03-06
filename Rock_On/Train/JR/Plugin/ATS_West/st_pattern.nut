function get_brake_pattern_offset(limit_speed)
{
	return 0;
}

function get_incoming_pattern_offset(limit_speed)
{
	return 0;
}

function lookup_brake_pattern(limit_speed, accum_distance, target_distance, offset_distance)
{
	local brake_pattern_table = 
	{
		[0] =  0.00  ,
		[1] =  4.80  ,
		[2] = 6.79  ,
		[3] = 8.31  ,
		[4] = 9.60  ,
		[5] = 10.73  ,
		[6] = 11.76  ,
		[7] = 12.70  ,
		[8] = 13.58  ,
		[9] = 14.40  ,
		[10] = 15.18  ,
		[11] = 15.92  ,
		[12] = 16.63  ,
		[13] = 17.31  ,
		[14] = 17.96  ,
		[15] = 18.59  ,
		[16] = 19.20  ,
		[17] = 19.79  ,
		[18] = 20.36  ,
		[19] = 20.92  ,
		[20] = 21.47  ,
		[21] = 22.00  ,
		[22] = 22.51  ,
		[23] = 23.02  ,
		[24] = 23.52  ,
		[25] = 24.00  ,
		[26] = 24.48  ,
		[27] = 24.94  ,
		[28] = 25.40  ,
		[29] = 25.85  ,
		[30] = 26.29  ,
		[31] = 26.73  ,
		[32] = 27.15  ,
		[33] = 27.57  ,
		[34] = 27.99  ,
		[35] = 28.40  ,
		[36] = 28.80  ,
		[37] = 29.20  ,
		[38] = 29.59  ,
		[39] = 29.98  ,
		[40] = 30.36  ,
		[41] = 30.73  ,
		[42] = 31.11  ,
		[43] = 31.48  ,
		[44] = 31.84  ,
		[45] = 32.20  ,
		[46] = 32.56  ,
		[47] = 32.91  ,
		[48] = 33.26  ,
		[49] = 33.60  ,
		[50] = 33.94  ,
		[51] = 34.28  ,
		[52] = 34.61  ,
		[53] = 34.94  ,
		[54] = 35.27  ,
		[55] = 35.60  ,
		[56] = 35.92  ,
		[57] = 36.24  ,
		[58] = 36.56  ,
		[59] = 36.87  ,
		[60] = 37.18  ,
		[61] = 37.49  ,
		[62] = 37.80  ,
		[63] = 38.10  ,
		[64] = 38.40  ,
		[65] = 38.70  ,
		[66] = 39.00  ,
		[67] = 39.29  ,
		[68] = 39.58  ,
		[69] = 39.87  ,
		[70] = 40.16  ,
		[71] = 40.45  ,
		[72] = 40.73  ,
		[73] = 41.01  ,
		[74] = 41.29  ,
		[75] = 41.57  ,
		[76] = 41.85  ,
		[77] = 42.12  ,
		[78] = 42.39  ,
		[79] = 42.66  ,
		[80] = 42.93  ,
		[81] = 43.20  ,
		[82] = 43.47  ,
		[83] = 43.73  ,
		[84] = 43.99  ,
		[85] = 44.25  ,
		[86] = 44.51  ,
		[87] = 44.77  ,
		[88] = 45.03  ,
		[89] = 45.28  ,
		[90] = 45.54  ,
		[91] = 45.79  ,
		[92] = 46.04  ,
		[93] = 46.29  ,
		[94] = 46.54  ,
		[95] = 46.78  ,
		[96] = 47.03  ,
		[97] = 47.27  ,
		[98] = 47.52  ,
		[99] = 47.76  ,
		[100] = 48.00  ,
		[101] = 48.24  ,
		[102] = 48.48  ,
		[103] = 48.71  ,
		[104] = 48.95  ,
		[105] = 49.19  ,
		[106] = 49.42  ,
		[107] = 49.65  ,
		[108] = 49.88  ,
		[109] = 50.11  ,
		[110] = 50.34  ,
		[111] = 50.57  ,
		[112] = 50.80  ,
		[113] = 51.02  ,
		[114] = 51.25  ,
		[115] = 51.47  ,
		[116] = 51.70  ,
		[117] = 51.92  ,
		[118] = 52.14  ,
		[119] = 52.36  ,
		[120] = 52.58  ,
		[121] = 52.80  ,
		[122] = 53.02  ,
		[123] = 53.23  ,
		[124] = 53.45  ,
		[125] = 53.67  ,
		[126] = 53.88  ,
		[127] = 54.09  ,
		[128] = 54.31  ,
		[129] = 54.52  ,
		[130] = 54.73  ,
		[131] = 54.94  ,
		[132] = 55.15  ,
		[133] = 55.36  ,
		[134] = 55.56  ,
		[135] = 55.77  ,
		[136] = 55.98  ,
		[137] = 56.18  ,
		[138] = 56.39  ,
		[139] = 56.59  ,
		[140] = 56.79  ,
		[141] = 57.00  ,
		[142] = 57.20  ,
		[143] = 57.40  ,
		[144] = 57.60  ,
		[145] = 57.80  ,
		[146] = 58.00  ,
		[147] = 58.20  ,
		[148] = 58.39  ,
		[149] = 58.59  ,
		[150] = 58.79  ,
		[151] = 58.98  ,
		[152] = 59.18  ,
		[153] = 59.37  ,
		[154] = 59.57  ,
		[155] = 59.76  ,
		[156] = 59.95  ,
		[157] = 60.14  ,
		[158] = 60.34  ,
		[159] = 60.53  ,
		[160] = 60.72  ,
		[161] = 60.91  ,
		[162] = 61.09  ,
		[163] = 61.28  ,
		[164] = 61.47  ,
		[165] = 61.66  ,
		[166] = 61.84  ,
		[167] = 62.03  ,
		[168] = 62.22  ,
		[169] = 62.40  ,
		[170] = 62.58  ,
		[171] = 62.77  ,
		[172] = 62.95  ,
		[173] = 63.13  ,
		[174] = 63.32  ,
		[175] = 63.50  ,
		[176] = 63.68  ,
		[177] = 63.86  ,
		[178] = 64.04  ,
		[179] = 64.22  ,
		[180] = 64.40  ,
		[181] = 64.58  ,
		[182] = 64.76  ,
		[183] = 64.93  ,
		[184] = 65.11  ,
		[185] = 65.29  ,
		[186] = 65.46  ,
		[187] = 65.64  ,
		[188] = 65.81  ,
		[189] = 65.99  ,
		[190] = 66.16  ,
		[191] = 66.34  ,
		[192] = 66.51  ,
		[193] = 66.68  ,
		[194] = 66.86  ,
		[195] = 67.03  ,
		[196] = 67.20  ,
		[197] = 67.37  ,
		[198] = 67.54  ,
		[199] = 67.71  ,
		[200] = 67.88  ,
		[201] = 68.05  ,
		[202] = 68.22  ,
		[203] = 68.39  ,
		[204] = 68.56  ,
		[205] = 68.73  ,
		[206] = 68.89  ,
		[207] = 69.06  ,
		[208] = 69.23  ,
		[209] = 69.39  ,
		[210] = 69.56  ,
		[211] = 69.72  ,
		[212] = 69.89  ,
		[213] = 70.05  ,
		[214] = 70.22  ,
		[215] = 70.38  ,
		[216] = 70.55  ,
		[217] = 70.71  ,
		[218] = 70.87  ,
		[219] = 71.03  ,
		[220] = 71.20  ,
		[221] = 71.36  ,
		[222] = 71.52  ,
		[223] = 71.68  ,
		[224] = 71.84  ,
		[225] = 72.00  ,
		[226] = 72.16  ,
		[227] = 72.32  ,
		[228] = 72.48  ,
		[229] = 72.64  ,
		[230] = 72.80  ,
		[231] = 72.95  ,
		[232] = 73.11  ,
		[233] = 73.27  ,
		[234] = 73.43  ,
		[235] = 73.58  ,
		[236] = 73.74  ,
		[237] = 73.90  ,
		[238] = 74.05  ,
		[239] = 74.21  ,
		[240] = 74.36  ,
		[241] = 74.52  ,
		[242] = 74.67  ,
		[243] = 74.82  ,
		[244] = 74.98  ,
		[245] = 75.13  ,
		[246] = 75.29  ,
		[247] = 75.44  ,
		[248] = 75.59  ,
		[249] = 75.74  ,
		[250] = 75.89  ,
		[251] = 76.05  ,
		[252] = 76.20  ,
		[253] = 76.35  ,
		[254] = 76.50  ,
		[255] = 76.65  ,
		[256] = 76.80  ,
		[257] = 76.95  ,
		[258] = 77.10  ,
		[259] = 77.25  ,
		[260] = 77.40  ,
		[261] = 77.55  ,
		[262] = 77.69  ,
		[263] = 77.84  ,
		[264] = 77.99  ,
		[265] = 78.14  ,
		[266] = 78.29  ,
		[267] = 78.43  ,
		[268] = 78.58  ,
		[269] = 78.73  ,
		[270] = 78.87  ,
		[271] = 79.02  ,
		[272] = 79.16  ,
		[273] = 79.31  ,
		[274] = 79.45  ,
		[275] = 79.60  ,
		[276] = 79.74  ,
		[277] = 79.89  ,
		[278] = 80.03  ,
		[279] = 80.18  ,
		[280] = 80.32  ,
		[281] = 80.46  ,
		[282] = 80.61  ,
		[283] = 80.75  ,
		[284] = 80.89  ,
		[285] = 81.03  ,
		[286] = 81.18  ,
		[287] = 81.32  ,
		[288] = 81.46  ,
		[289] = 81.60  ,
		[290] = 81.74  ,
		[291] = 81.88  ,
		[292] = 82.02  ,
		[293] = 82.16  ,
		[294] = 82.30  ,
		[295] = 82.44  ,
		[296] = 82.58  ,
		[297] = 82.72  ,
		[298] = 82.86  ,
		[299] = 83.00  ,
		[300] = 83.14  ,
		[301] = 83.28  ,
		[302] = 83.42  ,
		[303] = 83.55  ,
		[304] = 83.69  ,
		[305] = 83.83  ,
		[306] = 83.97  ,
		[307] = 84.10  ,
		[308] = 84.24  ,
		[309] = 84.38  ,
		[310] = 84.51  ,
		[311] = 84.65  ,
		[312] = 84.78  ,
		[313] = 84.92  ,
		[314] = 85.06  ,
		[315] = 85.19  ,
		[316] = 85.33  ,
		[317] = 85.46  ,
		[318] = 85.60  ,
		[319] = 85.73  ,
		[320] = 85.87  ,
		[321] = 86.00  ,
		[322] = 86.13  ,
		[323] = 86.27  ,
		[324] = 86.40  ,
		[325] = 86.53  ,
		[326] = 86.67  ,
		[327] = 86.80  ,
		[328] = 86.93  ,
		[329] = 87.06  ,
		[330] = 87.20  ,
		[331] = 87.33  ,
		[332] = 87.46  ,
		[333] = 87.59  ,
		[334] = 87.72  ,
		[335] = 87.85  ,
		[336] = 87.99  ,
		[337] = 88.12  ,
		[338] = 88.25  ,
		[339] = 88.38  ,
		[340] = 88.51  ,
		[341] = 88.64  ,
		[342] = 88.77  ,
		[343] = 88.90  ,
		[344] = 89.03  ,
		[345] = 89.16  ,
		[346] = 89.29  ,
		[347] = 89.41  ,
		[348] = 89.54  ,
		[349] = 89.67  ,
		[350] = 89.80  ,
		[351] = 89.93  ,
		[352] = 90.06  ,
		[353] = 90.18  ,
		[354] = 90.31  ,
		[355] = 90.44  ,
		[356] = 90.57  ,
		[357] = 90.69  ,
		[358] = 90.82  ,
		[359] = 90.95  ,
		[360] = 91.07  ,
		[361] = 91.20  ,
		[362] = 91.33  ,
		[363] = 91.45  ,
		[364] = 91.58  ,
		[365] = 91.70  ,
		[366] = 91.83  ,
		[367] = 91.95  ,
		[368] = 92.08  ,
		[369] = 92.20  ,
		[370] = 92.33  ,
		[371] = 92.45  ,
		[372] = 92.58  ,
		[373] = 92.70  ,
		[374] = 92.83  ,
		[375] = 92.95  ,
		[376] = 93.08  ,
		[377] = 93.20  ,
		[378] = 93.32  ,
		[379] = 93.45  ,
		[380] = 93.57  ,
		[381] = 93.69  ,
		[382] = 93.82  ,
		[383] = 93.94  ,
		[384] = 94.06  ,
		[385] = 94.18  ,
		[386] = 94.31  ,
		[387] = 94.43  ,
		[388] = 94.55  ,
		[389] = 94.67  ,
		[390] = 94.79  ,
		[391] = 94.91  ,
		[392] = 95.04  ,
		[393] = 95.16  ,
		[394] = 95.28  ,
		[395] = 95.40  ,
		[396] = 95.52  ,
		[397] = 95.64  ,
		[398] = 95.76  ,
		[399] = 95.88  ,
		[400] = 96.00  ,
		[401] = 96.12  ,
		[402] = 96.24  ,
		[403] = 96.36  ,
		[404] = 96.48  ,
		[405] = 96.60  ,
		[406] = 96.72  ,
		[407] = 96.84  ,
		[408] = 96.96  ,
		[409] = 97.07  ,
		[410] = 97.19  ,
		[411] = 97.31  ,
		[412] = 97.43  ,
		[413] = 97.55  ,
		[414] = 97.67  ,
		[415] = 97.78  ,
		[416] = 97.90  ,
		[417] = 98.02  ,
		[418] = 98.14  ,
		[419] = 98.25  ,
		[420] = 98.37  ,
		[421] = 98.49  ,
		[422] = 98.60  ,
		[423] = 98.72  ,
		[424] = 98.84  ,
		[425] = 98.95  ,
		[426] = 99.07  ,
		[427] = 99.19  ,
		[428] = 99.30  ,
		[429] = 99.42  ,
		[430] = 99.53  ,
		[431] = 99.65  ,
		[432] = 99.77  ,
		[433] = 99.88  ,
		[434] = 100.00  ,
		[435] = 100.11  ,
		[436] = 100.23  ,
		[437] = 100.34  ,
		[438] = 100.46  ,
		[439] = 100.57  ,
		[440] = 100.69  ,
		[441] = 100.80  ,
		[442] = 100.91  ,
		[443] = 101.03  ,
		[444] = 101.14  ,
		[445] = 101.26  ,
		[446] = 101.37  ,
		[447] = 101.48  ,
		[448] = 101.60  ,
		[449] = 101.71  ,
		[450] = 101.82  ,
		[451] = 101.94  ,
		[452] = 102.05  ,
		[453] = 102.16  ,
		[454] = 102.27  ,
		[455] = 102.39  ,
		[456] = 102.50  ,
		[457] = 102.61  ,
		[458] = 102.72  ,
		[459] = 102.84  ,
		[460] = 102.95  ,
		[461] = 103.06  ,
		[462] = 103.17  ,
		[463] = 103.28  ,
		[464] = 103.40  ,
		[465] = 103.51  ,
		[466] = 103.62  ,
		[467] = 103.73  ,
		[468] = 103.84  ,
		[469] = 103.95  ,
		[470] = 104.06  ,
		[471] = 104.17  ,
		[472] = 104.28  ,
		[473] = 104.39  ,
		[474] = 104.50  ,
		[475] = 104.61  ,
		[476] = 104.72  ,
		[477] = 104.83  ,
		[478] = 104.94  ,
		[479] = 105.05  ,
		[480] = 105.16  ,
		[481] = 105.27  ,
		[482] = 105.38  ,
		[483] = 105.49  ,
		[484] = 105.60  ,
		[485] = 105.71  ,
		[486] = 105.82  ,
		[487] = 105.93  ,
		[488] = 106.04  ,
		[489] = 106.14  ,
		[490] = 106.25  ,
		[491] = 106.36  ,
		[492] = 106.47  ,
		[493] = 106.58  ,
		[494] = 106.69  ,
		[495] = 106.79  ,
		[496] = 106.90  ,
		[497] = 107.01  ,
		[498] = 107.12  ,
		[499] = 107.22  ,
		[500] = 107.33  ,
		[501] = 107.44  ,
		[502] = 107.55  ,
		[503] = 107.65  ,
		[504] = 107.76  ,
		[505] = 107.87  ,
		[506] = 107.97  ,
		[507] = 108.08  ,
		[508] = 108.19  ,
		[509] = 108.29  ,
		[510] = 108.40  ,
		[511] = 108.51  ,
		[512] = 108.61  ,
		[513] = 108.72  ,
		[514] = 108.82  ,
		[515] = 108.93  ,
		[516] = 109.04  ,
		[517] = 109.14  ,
		[518] = 109.25  ,
		[519] = 109.35  ,
		[520] = 109.46  ,
		[521] = 109.56  ,
		[522] = 109.67  ,
		[523] = 109.77  ,
		[524] = 109.88  ,
		[525] = 109.98  ,
		[526] = 110.09  ,
		[527] = 110.19  ,
		[528] = 110.30  ,
		[529] = 110.40  ,
		[530] = 110.50  ,
		[531] = 110.61  ,
		[532] = 110.71  ,
		[533] = 110.82  ,
		[534] = 110.92  ,
		[535] = 111.02  ,
		[536] = 111.13  ,
		[537] = 111.23  ,
		[538] = 111.34  ,
		[539] = 111.44  ,
		[540] = 111.54  ,
		[541] = 111.65  ,
		[542] = 111.75  ,
		[543] = 111.85  ,
		[544] = 111.95  ,
		[545] = 112.06  ,
		[546] = 112.16  ,
		[547] = 112.26  ,
		[548] = 112.37  ,
		[549] = 112.47  ,
		[550] = 112.57  ,
		[551] = 112.67  ,
		[552] = 112.77  ,
		[553] = 112.88  ,
		[554] = 112.98  ,
		[555] = 113.08  ,
		[556] = 113.18  ,
		[557] = 113.28  ,
		[558] = 113.39  ,
		[559] = 113.49  ,
		[560] = 113.59  ,
		[561] = 113.69  ,
		[562] = 113.79  ,
		[563] = 113.89  ,
		[564] = 113.99  ,
		[565] = 114.09  ,
		[566] = 114.20  ,
		[567] = 114.30  ,
		[568] = 114.40  ,
		[569] = 114.50  ,
		[570] = 114.60  ,
		[571] = 114.70  ,
		[572] = 114.80  ,
		[573] = 114.90  ,
		[574] = 115.00  ,
		[575] = 115.10  ,
		[576] = 115.20  ,
		[577] = 115.30  ,
		[578] = 115.40  ,
		[579] = 115.50  ,
		[580] = 115.60  ,
		[581] = 115.70  ,
		[582] = 115.80  ,
		[583] = 115.90  ,
		[584] = 116.00  ,
		[585] = 116.10  ,
		[586] = 116.20  ,
		[587] = 116.29  ,
		[588] = 116.39  ,
		[589] = 116.49  ,
		[590] = 116.59  ,
		[591] = 116.69  ,
		[592] = 116.79  ,
		[593] = 116.89  ,
		[594] = 116.99  ,
		[595] = 117.08  ,
		[596] = 117.18  ,
		[597] = 117.28  ,
		[598] = 117.38  ,
		[599] = 117.48  ,
		[600] = 117.58  ,
		[601] = 117.67  ,
		[602] = 117.77  ,
		[603] = 117.87  ,
		[604] = 117.97  ,
		[605] = 118.06  ,
		[606] = 118.16  ,
		[607] = 118.26  ,
		[608] = 118.36  ,
		[609] = 118.45  ,
		[610] = 118.55  ,
		[611] = 118.65  ,
		[612] = 118.75  ,
		[613] = 118.84  ,
		[614] = 118.94  ,
		[615] = 119.04  ,
		[616] = 119.13  ,
		[617] = 119.23  ,
		[618] = 119.33  ,
		[619] = 119.42  ,
		[620] = 119.52  ,
		[621] = 119.62  ,
		[622] = 119.71  ,
		[623] = 119.81  ,
		[624] = 119.90  ,
		[625] = 120.00  ,
		[626] = 120.10  ,
		[627] = 120.19  ,
		[628] = 120.29  ,
		[629] = 120.38  ,
		[630] = 120.48  ,
		[631] = 120.57  ,
		[632] = 120.67  ,
		[633] = 120.77  ,
		[634] = 120.86  ,
		[635] = 120.96  ,
		[636] = 121.05  ,
		[637] = 121.15  ,
		[638] = 121.24  ,
		[639] = 121.34  ,
		[640] = 121.43  ,
		[641] = 121.53  ,
		[642] = 121.62  ,
		[643] = 121.72  ,
		[644] = 121.81  ,
		[645] = 121.90  ,
		[646] = 122.00  ,
		[647] = 122.09  ,
		[648] = 122.19  ,
		[649] = 122.28  ,
		[650] = 122.38  ,
		[651] = 122.47  ,
		[652] = 122.56  ,
		[653] = 122.66  ,
		[654] = 122.75  ,
		[655] = 122.85  ,
		[656] = 122.94  ,
		[657] = 123.03  ,
		[658] = 123.13  ,
		[659] = 123.22  ,
		[660] = 123.31  ,
		[661] = 123.41  ,
		[662] = 123.50  ,
		[663] = 123.59  ,
		[664] = 123.69  ,
		[665] = 123.78  ,
		[666] = 123.87  ,
		[667] = 123.97  ,
		[668] = 124.06  ,
		[669] = 124.15  ,
		[670] = 124.24  ,
		[671] = 124.34  ,
		[672] = 124.43  ,
		[673] = 124.52  ,
		[674] = 124.62  ,
		[675] = 124.71  ,
		[676] = 124.80  ,
		[677] = 124.89  ,
		[678] = 124.98  ,
		[679] = 125.08  ,
		[680] = 125.17  ,
		[681] = 125.26  ,
		[682] = 125.35  ,
		[683] = 125.44  ,
		[684] = 125.54  ,
		[685] = 125.63  ,
		[686] = 125.72  ,
		[687] = 125.81  ,
		[688] = 125.90  ,
		[689] = 125.99  ,
		[690] = 126.09  ,
		[691] = 126.18  ,
		[692] = 126.27  ,
		[693] = 126.36  ,
		[694] = 126.45  ,
		[695] = 126.54  ,
		[696] = 126.63  ,
		[697] = 126.72  ,
		[698] = 126.81  ,
		[699] = 126.91  ,
		[700] = 127.00  ,
		[701] = 127.09  ,
		[702] = 127.18  ,
		[703] = 127.27  ,
		[704] = 127.36  ,
		[705] = 127.45  ,
		[706] = 127.54  ,
		[707] = 127.63  ,
		[708] = 127.72  ,
		[709] = 127.81  ,
		[710] = 127.90  ,
		[711] = 127.99  ,
		[712] = 128.08  ,
		[713] = 128.17  ,
		[714] = 128.26  ,
		[715] = 128.35  ,
		[716] = 128.44  ,
		[717] = 128.53  ,
		[718] = 128.62  ,
		[719] = 128.71  ,
		[720] = 128.80  ,
		[721] = 128.89  ,
		[722] = 128.98  ,
		[723] = 129.07  ,
		[724] = 129.15  ,
		[725] = 129.24  ,
		[726] = 129.33  ,
		[727] = 129.42  ,
		[728] = 129.51  ,
		[729] = 129.60  ,
		[730] = 129.69  ,
		[731] = 129.78  ,
		[732] = 129.87  ,
		[733] = 129.96  ,
		[734] = 130.04  ,
		[735] = 130.13  ,
		[736] = 130.22  ,
		[737] = 130.31  ,
		[738] = 130.40  ,
		[739] = 130.49  ,
		[740] = 130.57  ,
		[741] = 130.66  ,
		[742] = 130.75  ,
		[743] = 130.84  ,
		[744] = 130.93  ,
		[745] = 131.01  ,
		[746] = 131.10  ,
		[747] = 131.19  ,
		[748] = 131.28  ,
		[749] = 131.37  ,
		[750] = 131.45  ,
		[751] = 131.54  ,
		[752] = 131.63  ,
		[753] = 131.72  ,
		[754] = 131.80  ,
		[755] = 131.89  ,
		[756] = 131.98  ,
		[757] = 132.07  ,
		[758] = 132.15  ,
		[759] = 132.24  ,
		[760] = 132.33  ,
		[761] = 132.41  ,
		[762] = 132.50  ,
		[763] = 132.59  ,
		[764] = 132.67  ,
		[765] = 132.76  ,
		[766] = 132.85  ,
		[767] = 132.93  ,
		[768] = 133.02  ,
		[769] = 133.11  ,
		[770] = 133.19  ,
		[771] = 133.28  ,
		[772] = 133.37  ,
		[773] = 133.45  ,
		[774] = 133.54  ,
		[775] = 133.63  ,
		[776] = 133.71  ,
		[777] = 133.80  ,
		[778] = 133.88  ,
		[779] = 133.97  ,
		[780] = 134.06  ,
		[781] = 134.14  ,
		[782] = 134.23  ,
		[783] = 134.31  ,
		[784] = 134.40  ,
		[785] = 134.49  ,
		[786] = 134.57  ,
		[787] = 134.66  ,
		[788] = 134.74  ,
		[789] = 134.83  ,
		[790] = 134.91  ,
		[791] = 135.00  ,
		[792] = 135.08  ,
		[793] = 135.17  ,
		[794] = 135.25  ,
		[795] = 135.34  ,
		[796] = 135.42  ,
		[797] = 135.51  ,
		[798] = 135.59  ,
		[799] = 135.68  ,
		[800] = 135.76  ,
		[801] = 135.85  ,
		[802] = 135.93  ,
		[803] = 136.02  ,
		[804] = 136.10  ,
		[805] = 136.19  ,
		[806] = 136.27  ,
		[807] = 136.36  ,
		[808] = 136.44  ,
		[809] = 136.53  ,
		[810] = 136.61  ,
		[811] = 136.69  ,
		[812] = 136.78  ,
		[813] = 136.86  ,
		[814] = 136.95  ,
		[815] = 137.03  ,
		[816] = 137.12  ,
		[817] = 137.20  ,
		[818] = 137.28  ,
		[819] = 137.37  ,
		[820] = 137.45  ,
		[821] = 137.53  ,
		[822] = 137.62  ,
		[823] = 137.70  ,
		[824] = 137.79  ,
		[825] = 137.87  ,
		[826] = 137.95  ,
		[827] = 138.04  ,
		[828] = 138.12  ,
		[829] = 138.20  ,
		[830] = 138.29  ,
		[831] = 138.37  ,
		[832] = 138.45  ,
		[833] = 138.54  ,
		[834] = 138.62  ,
		[835] = 138.70  ,
		[836] = 138.79  ,
		[837] = 138.87  ,
		[838] = 138.95  ,
		[839] = 139.03  ,
		[840] = 139.12  ,
		[841] = 139.20  ,
		[842] = 139.28  ,
		[843] = 139.37  ,
		[844] = 139.45  ,
		[845] = 139.53  ,
		[846] = 139.61  ,
		[847] = 139.70  ,
		[848] = 139.78  ,
		[849] = 139.86  ,
		[850] = 139.94  ,
		[851] = 140.03  ,
		[852] = 140.11  ,
		[853] = 140.19  ,
		[854] = 140.27  ,
		[855] = 140.35  ,
		[856] = 140.44  ,
		[857] = 140.52  ,
		[858] = 140.60  ,
		[859] = 140.68  ,
		[860] = 140.76  ,
		[861] = 140.85  ,
		[862] = 140.93  ,
		[863] = 141.01  ,
		[864] = 141.09  ,
		[865] = 141.17  ,
		[866] = 141.25  ,
		[867] = 141.34  ,
		[868] = 141.42  ,
		[869] = 141.50  ,
		[870] = 141.58  ,
		[871] = 141.66  ,
		[872] = 141.74  ,
		[873] = 141.82  ,
		[874] = 141.90  ,
		[875] = 141.99  ,
		[876] = 142.07  ,
		[877] = 142.15  ,
		[878] = 142.23  ,
		[879] = 142.31  ,
		[880] = 142.39  ,
		[881] = 142.47  ,
		[882] = 142.55  ,
		[883] = 142.63  ,
		[884] = 142.71  ,
		[885] = 142.79  ,
		[886] = 142.88  ,
		[887] = 142.96  ,
		[888] = 143.04  ,
		[889] = 143.12  ,
		[890] = 143.20  ,
		[891] = 143.28  ,
		[892] = 143.36  ,
		[893] = 143.44  ,
		[894] = 143.52  ,
		[895] = 143.60  ,
		[896] = 143.68  ,
		[897] = 143.76  ,
		[898] = 143.84  ,
		[899] = 143.92  ,
		[900] = 144.00  ,
		[901] = 144.08  ,
		[902] = 144.16  ,
		[903] = 144.24  ,
		[904] = 144.32  ,
		[905] = 144.40  ,
		[906] = 144.48  ,
		[907] = 144.56  ,
		[908] = 144.64  ,
		[909] = 144.72  ,
		[910] = 144.80  ,
		[911] = 144.88  ,
		[912] = 144.96  ,
		[913] = 145.04  ,
		[914] = 145.12  ,
		[915] = 145.20  ,
		[916] = 145.27  ,
		[917] = 145.35  ,
		[918] = 145.43  ,
		[919] = 145.51  ,
		[920] = 145.59  ,
		[921] = 145.67  ,
		[922] = 145.75  ,
		[923] = 145.83  ,
		[924] = 145.91  ,
		[925] = 145.99  ,
		[926] = 146.07  ,
		[927] = 146.14  ,
		[928] = 146.22  ,
		[929] = 146.30  ,
		[930] = 146.38  ,
		[931] = 146.46  ,
		[932] = 146.54  ,
		[933] = 146.62  ,
		[934] = 146.69  ,
		[935] = 146.77  ,
		[936] = 146.85  ,
		[937] = 146.93  ,
		[938] = 147.01  ,
		[939] = 147.09  ,
		[940] = 147.17  ,
		[941] = 147.24  ,
		[942] = 147.32  ,
		[943] = 147.40  ,
		[944] = 147.48  ,
		[945] = 147.56  ,
		[946] = 147.63  ,
		[947] = 147.71  ,
		[948] = 147.79  ,
		[949] = 147.87  ,
		[950] = 147.95  ,
		[951] = 148.02  ,
		[952] = 148.10  ,
		[953] = 148.18  ,
		[954] = 148.26  ,
		[955] = 148.33  ,
		[956] = 148.41  ,
		[957] = 148.49  ,
		[958] = 148.57  ,
		[959] = 148.65  ,
		[960] = 148.72  ,
		[961] = 148.80  ,
		[962] = 148.88  ,
		[963] = 148.95  ,
		[964] = 149.03  ,
		[965] = 149.11  ,
		[966] = 149.19  ,
		[967] = 149.26  ,
		[968] = 149.34  ,
		[969] = 149.42  ,
		[970] = 149.50  ,
		[971] = 149.57  ,
		[972] = 149.65  ,
		[973] = 149.73  ,
		[974] = 149.80  ,
		[975] = 149.88  ,
		[976] = 149.96  ,
		[977] = 150.03  ,
		[978] = 150.11  ,
		[979] = 150.19  ,
		[980] = 150.26  ,
		[981] = 150.34  ,
		[982] = 150.42  ,
		[983] = 150.49  ,
		[984] = 150.57  ,
		[985] = 150.65  ,
		[986] = 150.72  ,
		[987] = 150.80  ,
		[988] = 150.88  ,
		[989] = 150.95  ,
		[990] = 151.03  ,
		[991] = 151.10  ,
		[992] = 151.18  ,
		[993] = 151.26  ,
		[994] = 151.33  ,
		[995] = 151.41  ,
		[996] = 151.49  ,
		[997] = 151.56  ,
		[998] = 151.64  ,
		[999] = 151.71  ,
		[1000] = 151.79 ,

	};

	local true_idx = (target_distance - accum_distance);

	if (true_idx <= 0)
	{
		return 0.0f;
	}
	else if (true_idx > 1000)
	{
		return brake_pattern_table[1000];
	}
	else
	{
		return brake_pattern_table[true_idx.tointeger()];
	}
}
