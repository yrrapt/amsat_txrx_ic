
if {[catch {read_lef $::env(MERGED_LEF)} errmsg]} {
    puts stderr $errmsg
    exit 1
}

if {[catch {read_def $::env(CURRENT_DEF)} errmsg]} {
    puts stderr $errmsg
	exit 1
}

# set_io_pin_constraint 	-direction output -names output_binary_o[0] 		-region top:20.24-23.92
# set_io_pin_constraint 	-direction output -names output_binary_o[1] 		-region bottom:20.24-23.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[26] 	-region top:23.92-27.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[166] 	-region bottom:23.92-27.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[219] 	-region top:27.60-31.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[28] 	-region bottom:27.60-31.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[149] 	-region top:31.28-34.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[60] 	-region bottom:31.28-34.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[148] 	-region top:34.96-38.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[234] 	-region bottom:34.96-38.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[147] 	-region top:38.64-42.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[122] 	-region bottom:38.64-42.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[243] 	-region top:42.32-46.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[156] 	-region bottom:42.32-46.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[221] 	-region top:46.00-49.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[203] 	-region bottom:46.00-49.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[105] 	-region top:49.68-53.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[8] 	-region bottom:49.68-53.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[78] 	-region top:53.36-57.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[214] 	-region bottom:53.36-57.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[34] 	-region top:57.04-60.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[160] 	-region bottom:57.04-60.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[182] 	-region top:60.72-64.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[35] 	-region bottom:60.72-64.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[183] 	-region top:64.40-68.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[248] 	-region bottom:64.40-68.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[241] 	-region top:68.08-71.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[245] 	-region bottom:68.08-71.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[99] 	-region top:71.76-75.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[136] 	-region bottom:71.76-75.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[124] 	-region top:75.44-79.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[129] 	-region bottom:75.44-79.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[29] 	-region top:79.12-82.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[209] 	-region bottom:79.12-82.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[104] 	-region top:82.80-86.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[132] 	-region bottom:82.80-86.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[18] 	-region top:86.48-90.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[6] 	-region bottom:86.48-90.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[10] 	-region top:90.16-93.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[139] 	-region bottom:90.16-93.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[109] 	-region top:93.84-97.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[16] 	-region bottom:93.84-97.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[125] 	-region top:97.52-101.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[72] 	-region bottom:97.52-101.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[20] 	-region top:101.20-104.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[251] 	-region bottom:101.20-104.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[196] 	-region top:104.88-108.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[157] 	-region bottom:104.88-108.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[55] 	-region top:108.56-112.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[218] 	-region bottom:108.56-112.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[12] 	-region top:112.24-115.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[195] 	-region bottom:112.24-115.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[138] 	-region top:115.92-119.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[62] 	-region bottom:115.92-119.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[152] 	-region top:119.60-123.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[167] 	-region bottom:119.60-123.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[191] 	-region top:123.28-126.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[44] 	-region bottom:123.28-126.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[146] 	-region top:126.96-130.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[228] 	-region bottom:126.96-130.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[216] 	-region top:130.64-134.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[176] 	-region bottom:130.64-134.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[238] 	-region top:134.32-138.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[50] 	-region bottom:134.32-138.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[43] 	-region top:138.00-141.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[159] 	-region bottom:138.00-141.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[58] 	-region top:141.68-145.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[79] 	-region bottom:141.68-145.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[24] 	-region top:145.36-149.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[131] 	-region bottom:145.36-149.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[168] 	-region top:149.04-152.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[1] 	-region bottom:149.04-152.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[207] 	-region top:152.72-156.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[137] 	-region bottom:152.72-156.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[130] 	-region top:156.40-160.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[71] 	-region bottom:156.40-160.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[38] 	-region top:160.08-163.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[194] 	-region bottom:160.08-163.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[189] 	-region top:163.76-167.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[170] 	-region bottom:163.76-167.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[63] 	-region top:167.44-171.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[9] 	-region bottom:167.44-171.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[141] 	-region top:171.12-174.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[246] 	-region bottom:171.12-174.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[75] 	-region top:174.80-178.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[121] 	-region bottom:174.80-178.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[204] 	-region top:178.48-182.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[51] 	-region bottom:178.48-182.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[22] 	-region top:182.16-185.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[193] 	-region bottom:182.16-185.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[177] 	-region top:185.84-189.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[64] 	-region bottom:185.84-189.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[158] 	-region top:189.52-193.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[70] 	-region bottom:189.52-193.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[27] 	-region top:193.20-196.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[225] 	-region bottom:193.20-196.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[113] 	-region top:196.88-200.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[236] 	-region bottom:196.88-200.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[30] 	-region top:200.56-204.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[187] 	-region bottom:200.56-204.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[134] 	-region top:204.24-207.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[244] 	-region bottom:204.24-207.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[11] 	-region top:207.92-211.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[59] 	-region bottom:207.92-211.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[242] 	-region top:211.60-215.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[21] 	-region bottom:211.60-215.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[110] 	-region top:215.28-218.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[5] 	-region bottom:215.28-218.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[239] 	-region top:218.96-222.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[3] 	-region bottom:218.96-222.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[153] 	-region top:222.64-226.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[40] 	-region bottom:222.64-226.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[100] 	-region top:226.32-230.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[172] 	-region bottom:226.32-230.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[208] 	-region top:230.00-233.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[118] 	-region bottom:230.00-233.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[53] 	-region top:233.68-237.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[119] 	-region bottom:233.68-237.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[133] 	-region top:237.36-241.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[87] 	-region bottom:237.36-241.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[150] 	-region top:241.04-244.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[202] 	-region bottom:241.04-244.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[115] 	-region top:244.72-248.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[144] 	-region bottom:244.72-248.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[14] 	-region top:248.40-252.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[74] 	-region bottom:248.40-252.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[48] 	-region top:252.08-255.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[81] 	-region bottom:252.08-255.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[61] 	-region top:255.76-259.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[107] 	-region bottom:255.76-259.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[217] 	-region top:259.44-263.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[114] 	-region bottom:259.44-263.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[173] 	-region top:263.12-266.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[240] 	-region bottom:263.12-266.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[127] 	-region top:266.80-270.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[37] 	-region bottom:266.80-270.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[249] 	-region top:270.48-274.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[97] 	-region bottom:270.48-274.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[162] 	-region top:274.16-277.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[154] 	-region bottom:274.16-277.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[32] 	-region top:277.84-281.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[31] 	-region bottom:277.84-281.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[56] 	-region top:281.52-285.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[190] 	-region bottom:281.52-285.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[25] 	-region top:285.20-288.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[220] 	-region bottom:285.20-288.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[181] 	-region top:288.88-292.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[57] 	-region bottom:288.88-292.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[120] 	-region top:292.56-296.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[180] 	-region bottom:292.56-296.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[211] 	-region top:296.24-299.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[186] 	-region bottom:296.24-299.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[179] 	-region top:299.92-303.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[200] 	-region bottom:299.92-303.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[65] 	-region top:303.60-307.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[155] 	-region bottom:303.60-307.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[47] 	-region top:307.28-310.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[145] 	-region bottom:307.28-310.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[49] 	-region top:310.96-314.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[175] 	-region bottom:310.96-314.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[163] 	-region top:314.64-318.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[142] 	-region bottom:314.64-318.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[73] 	-region top:318.32-322.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[254] 	-region bottom:318.32-322.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[15] 	-region top:322.00-325.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[54] 	-region bottom:322.00-325.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[235] 	-region top:325.68-329.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[169] 	-region bottom:325.68-329.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[237] 	-region top:329.36-333.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[116] 	-region bottom:329.36-333.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[101] 	-region top:333.04-336.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[36] 	-region bottom:333.04-336.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[231] 	-region top:336.72-340.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[224] 	-region bottom:336.72-340.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[96] 	-region top:340.40-344.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[52] 	-region bottom:340.40-344.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[192] 	-region top:344.08-347.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[178] 	-region bottom:344.08-347.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[102] 	-region top:347.76-351.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[233] 	-region bottom:347.76-351.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[19] 	-region top:351.44-355.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[197] 	-region bottom:351.44-355.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[164] 	-region top:355.12-358.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[161] 	-region bottom:355.12-358.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[247] 	-region top:358.80-362.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[103] 	-region bottom:358.80-362.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[7] 	-region top:362.48-366.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[42] 	-region bottom:362.48-366.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[69] 	-region top:366.16-369.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[80] 	-region bottom:366.16-369.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[165] 	-region top:369.84-373.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[17] 	-region bottom:369.84-373.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[252] 	-region top:373.52-377.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[94] 	-region bottom:373.52-377.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[151] 	-region top:377.20-380.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[229] 	-region bottom:377.20-380.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[117] 	-region top:380.88-384.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[222] 	-region bottom:380.88-384.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[13] 	-region top:384.56-388.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[85] 	-region bottom:384.56-388.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[227] 	-region top:388.24-391.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[215] 	-region bottom:388.24-391.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[39] 	-region top:391.92-395.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[135] 	-region bottom:391.92-395.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[2] 	-region top:395.60-399.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[253] 	-region bottom:395.60-399.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[106] 	-region top:399.28-402.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[184] 	-region bottom:399.28-402.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[68] 	-region top:402.96-406.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[126] 	-region bottom:402.96-406.64
# set_io_pin_constraint 	-direction output -names output_thermometer_o[89] 	-region top:406.64-410.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[95] 	-region bottom:406.64-410.32
# set_io_pin_constraint 	-direction output -names output_thermometer_o[77] 	-region top:410.32-414.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[98] 	-region bottom:410.32-414.00
# set_io_pin_constraint 	-direction output -names output_thermometer_o[143] 	-region top:414.00-417.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[86] 	-region bottom:414.00-417.68
# set_io_pin_constraint 	-direction output -names output_thermometer_o[83] 	-region top:417.68-421.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[4] 	-region bottom:417.68-421.36
# set_io_pin_constraint 	-direction output -names output_thermometer_o[66] 	-region top:421.36-425.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[123] 	-region bottom:421.36-425.04
# set_io_pin_constraint 	-direction output -names output_thermometer_o[185] 	-region top:425.04-428.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[67] 	-region bottom:425.04-428.72
# set_io_pin_constraint 	-direction output -names output_thermometer_o[226] 	-region top:428.72-432.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[23] 	-region bottom:428.72-432.40
# set_io_pin_constraint 	-direction output -names output_thermometer_o[82] 	-region top:432.40-436.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[255] 	-region bottom:432.40-436.08
# set_io_pin_constraint 	-direction output -names output_thermometer_o[46] 	-region top:436.08-439.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[230] 	-region bottom:436.08-439.76
# set_io_pin_constraint 	-direction output -names output_thermometer_o[92] 	-region top:439.76-443.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[199] 	-region bottom:439.76-443.44
# set_io_pin_constraint 	-direction output -names output_thermometer_o[201] 	-region top:443.44-447.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[206] 	-region bottom:443.44-447.12
# set_io_pin_constraint 	-direction output -names output_thermometer_o[0] 	-region top:447.12-450.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[128] 	-region bottom:447.12-450.80
# set_io_pin_constraint 	-direction output -names output_thermometer_o[108] 	-region top:450.80-454.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[223] 	-region bottom:450.80-454.48
# set_io_pin_constraint 	-direction output -names output_thermometer_o[205] 	-region top:454.48-458.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[76] 	-region bottom:454.48-458.16
# set_io_pin_constraint 	-direction output -names output_thermometer_o[41] 	-region top:458.16-461.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[88] 	-region bottom:458.16-461.84
# set_io_pin_constraint 	-direction output -names output_thermometer_o[45] 	-region top:461.84-465.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[198] 	-region bottom:461.84-465.52
# set_io_pin_constraint 	-direction output -names output_thermometer_o[171] 	-region top:465.52-469.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[112] 	-region bottom:465.52-469.20
# set_io_pin_constraint 	-direction output -names output_thermometer_o[140] 	-region top:469.20-472.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[84] 	-region bottom:469.20-472.88
# set_io_pin_constraint 	-direction output -names output_thermometer_o[91] 	-region top:472.88-476.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[33] 	-region bottom:472.88-476.56
# set_io_pin_constraint 	-direction output -names output_thermometer_o[93] 	-region top:476.56-480.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[232] 	-region bottom:476.56-480.24
# set_io_pin_constraint 	-direction output -names output_thermometer_o[111] 	-region top:480.24-483.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[213] 	-region bottom:480.24-483.92
# set_io_pin_constraint 	-direction output -names output_thermometer_o[250] 	-region top:483.92-487.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[188] 	-region bottom:483.92-487.60
# set_io_pin_constraint 	-direction output -names output_thermometer_o[90] 	-region top:487.60-491.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[174] 	-region bottom:487.60-491.28
# set_io_pin_constraint 	-direction output -names output_thermometer_o[212] 	-region top:491.28-494.96
# set_io_pin_constraint 	-direction output -names output_thermometer_o[210] 	-region bottom:491.28-494.96

set_io_pin_constraint 	-direction output -names output_binary_o[0] 		-region bottom:*
set_io_pin_constraint 	-direction output -names output_binary_o[1] 		-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[26] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[166] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[219] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[28] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[149] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[60] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[148] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[234] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[147] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[122] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[243] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[156] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[221] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[203] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[105] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[8] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[78] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[214] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[34] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[160] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[182] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[35] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[183] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[248] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[241] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[245] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[99] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[136] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[124] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[129] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[29] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[209] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[104] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[132] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[18] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[6] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[10] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[139] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[109] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[16] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[125] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[72] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[20] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[251] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[196] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[157] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[55] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[218] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[12] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[195] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[138] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[62] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[152] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[167] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[191] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[44] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[146] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[228] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[216] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[176] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[238] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[50] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[43] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[159] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[58] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[79] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[24] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[131] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[168] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[1] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[207] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[137] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[130] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[71] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[38] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[194] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[189] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[170] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[63] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[9] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[141] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[246] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[75] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[121] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[204] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[51] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[22] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[193] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[177] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[64] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[158] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[70] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[27] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[225] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[113] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[236] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[30] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[187] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[134] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[244] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[11] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[59] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[242] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[21] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[110] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[5] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[239] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[3] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[153] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[40] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[100] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[172] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[208] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[118] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[53] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[119] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[133] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[87] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[150] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[202] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[115] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[144] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[14] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[74] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[48] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[81] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[61] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[107] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[217] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[114] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[173] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[240] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[127] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[37] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[249] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[97] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[162] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[154] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[32] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[31] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[56] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[190] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[25] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[220] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[181] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[57] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[120] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[180] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[211] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[186] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[179] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[200] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[65] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[155] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[47] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[145] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[49] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[175] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[163] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[142] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[73] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[254] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[15] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[54] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[235] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[169] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[237] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[116] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[101] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[36] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[231] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[224] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[96] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[52] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[192] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[178] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[102] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[233] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[19] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[197] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[164] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[161] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[247] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[103] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[7] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[42] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[69] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[80] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[165] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[17] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[252] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[94] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[151] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[229] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[117] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[222] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[13] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[85] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[227] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[215] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[39] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[135] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[2] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[253] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[106] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[184] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[68] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[126] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[89] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[95] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[77] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[98] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[143] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[86] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[83] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[4] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[66] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[123] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[185] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[67] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[226] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[23] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[82] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[255] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[46] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[230] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[92] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[199] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[201] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[206] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[0] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[128] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[108] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[223] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[205] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[76] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[41] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[88] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[45] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[198] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[171] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[112] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[140] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[84] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[91] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[33] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[93] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[232] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[111] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[213] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[250] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[188] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[90] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[174] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[212] 	-region bottom:*
set_io_pin_constraint 	-direction output -names output_thermometer_o[210] 	-region bottom:*


set_io_pin_constraint 	-direction input -names clk_i* 						-region right:100-210
set_io_pin_constraint 	-direction input -names input_binary_i* 			-region right:100-210
set_io_pin_constraint 	-direction input -names randomise_en_i 				-region right:100-210
set_io_pin_constraint 	-direction input -names rst_ni 						-region right:100-210

# set_io_pin_constraint -names clk_i* 						-region right:*
# set_io_pin_constraint -names input_binary_i* 			    -region right:*
# set_io_pin_constraint -names randomise_en_i 				-region right:*
# set_io_pin_constraint -names rst_ni 						-region right:*



place_pins 	-min_distance 1 \
            -hor_layers $::env(FP_IO_HMETAL)\
            -ver_layers $::env(FP_IO_VMETAL)

write_def $::env(SAVE_DEF)