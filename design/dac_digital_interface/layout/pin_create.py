import re
import pickle
import argparse
import random

# define input parameters
parser = argparse.ArgumentParser()
parser.add_argument("--out_pitch",    default=1380,                help="Pitch for output pins")
parser.add_argument("--out_start",    default=5640,                help="Starting location of output pins")
parser.add_argument("--out_offset",   default=140,                 help="Output pins offset from edge")
parser.add_argument("--out_segments", default=256,                 help="Number of segmented outputs")
parser.add_argument("--in_pitch",     default=1360,                help="Pitch for input pins")
parser.add_argument("--in_start",     default=8500,                help="Starting location of input pins")
parser.add_argument("--in_offset",    default=600,                 help="Input pins offset from edge")
parser.add_argument("--in_binary",    default=10,                  help="Number of input binary bits")
parser.add_argument("--die_area",     default='0,0,260000,214000', help="Die area. Comma separated: x0,y0,x1,y1")
parser.add_argument("--output_def",   default='pin_locations.def', help="Location to save the output DEF file")
parser.add_argument("--random",       default=0,                   help="Should the pin locations be randomised")
args = parser.parse_args()


####################################################################################################################################################################################
# define the pin order

if args.random:
    
    # create list of outputs pins
    unwrapped_pins = ['output_binary_o[0]', 'output_binary_o[1]']
    for i in range(args.out_segments):
        unwrapped_pins.append('output_thermometer_o[%d]' % i)
    
    # randomise
    random.shuffle(unwrapped_pins)

    # split into two dimensional list
    pins = [[],[]]
    for i in range(int(len(unwrapped_pins)/2)):
        pins[0].append(unwrapped_pins[2*i])
        pins[1].append(unwrapped_pins[2*i+1])

else:

    # data_half    - output_binary[1]   top,    32 from right
    # data_quarter - output_binary[0]   bottom, 48 from right

    
    

    pins = [[   'output_thermometer_o[69]',  'output_thermometer_o[244]', 'output_thermometer_o[54]',  'output_thermometer_o[200]', 'output_thermometer_o[195]', 'output_thermometer_o[130]', 
                'output_thermometer_o[82]',  'output_thermometer_o[245]', 'output_thermometer_o[197]', 'output_thermometer_o[251]', 'output_thermometer_o[72]',  'output_thermometer_o[230]', 
                'output_thermometer_o[115]', 'output_thermometer_o[151]', 'output_thermometer_o[105]', 'output_thermometer_o[196]', 'output_thermometer_o[76]',  'output_thermometer_o[241]', 
                'output_thermometer_o[123]', 'output_thermometer_o[242]', 'output_thermometer_o[218]', 'output_thermometer_o[94]',  'output_thermometer_o[9]',   'output_thermometer_o[179]', 
                'output_thermometer_o[86]',  'output_thermometer_o[182]', 'output_thermometer_o[96]',  'output_thermometer_o[29]',  'output_thermometer_o[191]', 'output_thermometer_o[33]',  
                'output_thermometer_o[11]',  'output_thermometer_o[208]', 'output_thermometer_o[187]', 'output_thermometer_o[59]',  'output_thermometer_o[30]',  'output_thermometer_o[235]', 
                'output_thermometer_o[97]',  'output_thermometer_o[188]', 'output_thermometer_o[185]', 'output_thermometer_o[32]',  'output_thermometer_o[7]',   'output_thermometer_o[221]',
                'output_thermometer_o[37]',  'output_thermometer_o[211]', 'output_thermometer_o[226]', 'output_thermometer_o[249]', 'output_thermometer_o[109]', 'output_thermometer_o[60]',
                'output_thermometer_o[23]',  'output_thermometer_o[243]', 'output_thermometer_o[157]', 'output_thermometer_o[217]', 'output_thermometer_o[163]', 'output_thermometer_o[93]',
                'output_thermometer_o[107]', 'output_thermometer_o[27]',  'output_thermometer_o[162]', 'output_thermometer_o[168]', 'output_thermometer_o[199]', 'output_thermometer_o[2]',
                'output_thermometer_o[136]', 'output_thermometer_o[8]',   'output_thermometer_o[209]', 'output_thermometer_o[145]', 'output_thermometer_o[158]', 'output_thermometer_o[87]',
                'output_thermometer_o[237]', 'output_thermometer_o[154]', 'output_thermometer_o[19]',  'output_thermometer_o[181]', 'output_thermometer_o[207]', 'output_thermometer_o[140]',
                'output_thermometer_o[126]', 'output_thermometer_o[143]', 'output_thermometer_o[13]',  'output_thermometer_o[248]', 'output_thermometer_o[95]',  'output_thermometer_o[89]',
                'output_thermometer_o[205]', 'output_thermometer_o[39]',  'output_thermometer_o[41]',  'output_thermometer_o[169]', 'output_thermometer_o[186]', 'output_thermometer_o[214]',
                'output_thermometer_o[206]', 'output_thermometer_o[228]', 'output_thermometer_o[220]', 'output_thermometer_o[247]', 'output_thermometer_o[219]', 'output_thermometer_o[114]',
                'output_thermometer_o[167]', 'output_thermometer_o[159]', 'output_thermometer_o[78]',  'output_thermometer_o[189]', 'output_thermometer_o[106]', 'output_thermometer_o[155]',
                'output_thermometer_o[138]', 'output_binary_o[1]',        'output_thermometer_o[121]', 'output_thermometer_o[77]',  'output_thermometer_o[141]', 'output_thermometer_o[216]', 
                'output_thermometer_o[210]', 'output_thermometer_o[150]', 'output_thermometer_o[240]', 'output_thermometer_o[66]',  'output_thermometer_o[127]', 'output_thermometer_o[148]', 
                'output_thermometer_o[255]', 'output_thermometer_o[133]', 'output_thermometer_o[22]',  'output_thermometer_o[75]',  'output_thermometer_o[51]',  'output_thermometer_o[254]', 
                'output_thermometer_o[122]', 'output_thermometer_o[46]',  'output_thermometer_o[56]',  'output_thermometer_o[135]', 'output_thermometer_o[173]', 'output_thermometer_o[38]', 
                'output_thermometer_o[238]', 'output_thermometer_o[165]', 'output_thermometer_o[246]', 'output_thermometer_o[50]',  'output_thermometer_o[113]', 'output_thermometer_o[231]', 
                'output_thermometer_o[203]', 'output_thermometer_o[44]',  'output_thermometer_o[108]'], 
            [   'output_thermometer_o[112]', 'output_thermometer_o[83]',  'output_thermometer_o[166]', 'output_thermometer_o[17]',  'output_thermometer_o[15]',  'output_thermometer_o[229]', 
                'output_thermometer_o[4]',   'output_thermometer_o[61]',  'output_thermometer_o[101]', 'output_thermometer_o[213]', 'output_thermometer_o[43]',  'output_thermometer_o[134]', 
                'output_thermometer_o[212]', 'output_thermometer_o[236]', 'output_thermometer_o[174]', 'output_thermometer_o[57]',  'output_thermometer_o[142]', 'output_thermometer_o[110]',
                'output_thermometer_o[81]',  'output_thermometer_o[14]',  'output_thermometer_o[250]', 'output_thermometer_o[129]', 'output_thermometer_o[117]', 'output_thermometer_o[73]',
                'output_thermometer_o[215]', 'output_thermometer_o[12]',  'output_thermometer_o[132]', 'output_thermometer_o[232]', 'output_thermometer_o[5]',   'output_thermometer_o[161]', 
                'output_thermometer_o[160]', 'output_thermometer_o[47]',  'output_thermometer_o[79]',  'output_thermometer_o[116]', 'output_thermometer_o[194]', 'output_thermometer_o[227]',
                'output_thermometer_o[67]',  'output_thermometer_o[31]',  'output_thermometer_o[20]',  'output_thermometer_o[125]', 'output_thermometer_o[21]',  'output_thermometer_o[190]',
                'output_thermometer_o[74]',  'output_thermometer_o[198]', 'output_thermometer_o[193]', 'output_thermometer_o[84]',  'output_thermometer_o[253]', 'output_thermometer_o[64]',
                'output_thermometer_o[164]', 'output_thermometer_o[137]', 'output_thermometer_o[119]', 'output_thermometer_o[90]',  'output_thermometer_o[18]',  'output_thermometer_o[26]',
                'output_thermometer_o[144]', 'output_thermometer_o[201]', 'output_thermometer_o[146]', 'output_thermometer_o[53]',  'output_thermometer_o[147]', 'output_thermometer_o[3]',
                'output_thermometer_o[204]', 'output_thermometer_o[102]', 'output_thermometer_o[234]', 'output_thermometer_o[16]',  'output_thermometer_o[45]',  'output_thermometer_o[149]',
                'output_thermometer_o[224]', 'output_thermometer_o[98]',  'output_thermometer_o[222]', 'output_thermometer_o[35]',  'output_thermometer_o[124]', 'output_thermometer_o[25]',
                'output_thermometer_o[68]',  'output_thermometer_o[175]', 'output_thermometer_o[178]', 'output_thermometer_o[131]', 'output_thermometer_o[156]', 'output_thermometer_o[176]',
                'output_thermometer_o[62]',  'output_thermometer_o[99]',  'output_thermometer_o[104]', 'output_binary_o[0]',        'output_thermometer_o[180]', 'output_thermometer_o[63]',  
                'output_thermometer_o[128]', 'output_thermometer_o[55]',  'output_thermometer_o[111]', 'output_thermometer_o[183]', 'output_thermometer_o[58]',  'output_thermometer_o[252]', 
                'output_thermometer_o[49]',  'output_thermometer_o[120]', 'output_thermometer_o[152]', 'output_thermometer_o[103]', 'output_thermometer_o[233]', 'output_thermometer_o[34]',  
                'output_thermometer_o[48]',  'output_thermometer_o[225]', 'output_thermometer_o[10]',  'output_thermometer_o[170]', 'output_thermometer_o[40]',  'output_thermometer_o[139]', 
                'output_thermometer_o[42]',  'output_thermometer_o[88]',  'output_thermometer_o[1]',   'output_thermometer_o[36]',  'output_thermometer_o[177]', 'output_thermometer_o[239]', 
                'output_thermometer_o[71]',  'output_thermometer_o[91]',  'output_thermometer_o[65]',  'output_thermometer_o[192]', 'output_thermometer_o[171]', 'output_thermometer_o[28]',
                'output_thermometer_o[70]',  'output_thermometer_o[100]', 'output_thermometer_o[172]', 'output_thermometer_o[184]', 'output_thermometer_o[85]',  'output_thermometer_o[52]',
                'output_thermometer_o[92]',  'output_thermometer_o[223]', 'output_thermometer_o[118]', 'output_thermometer_o[202]', 'output_thermometer_o[80]',  'output_thermometer_o[153]',
                'output_thermometer_o[6]',   'output_thermometer_o[0]',   'output_thermometer_o[24]']]


####################################################################################################################################################################################
# define the pin order

# add header
def_string = 'VERSION 5.8 ;\n\
DIVIDERCHAR "/" ;\n\
BUSBITCHARS "[]" \n\
DESIGN dac_digital_interface ;\n\
UNITS DISTANCE MICRONS 1000 ;\n'

# define diearea
def_string += 'DIEAREA ( %d %d ) ( %d %d ) ;\n' % ( 1000*int(str(args.die_area).split(',')[0]),\
                                                    1000*int(str(args.die_area).split(',')[1]),\
                                                    1000*int(str(args.die_area).split(',')[2]),\
                                                    1000*int(str(args.die_area).split(',')[3]) )
def_string += 'PINS 271 ;\n'

####################################################################################################################################################################################
# function for generating pin definiton
def add_pin(name, x, y, direction, def_string):

    if direction == 'output':
        def_string += '    - %s + NET %s + DIRECTION OUTPUT + USE SIGNAL + PLACED ( %d %d ) N + LAYER met2 ( -70 -140 ) ( 70 140 ) ;\n' % (name, name, x, y)
    else:
        def_string += '    - %s + NET %s + DIRECTION INPUT + USE SIGNAL + PLACED ( %d %d ) N + LAYER met3 ( -600 -300 ) ( 600 300 ) ;\n' % (name, name, x, y)

    return def_string

####################################################################################################################################################################################
# write output pin locations

location = args.out_start
top_y    = 1000*int(str(args.die_area).split(',')[3]) - args.out_offset
bottom_y = 1000*int(str(args.die_area).split(',')[1]) + args.out_offset

for i in range(len(pins[0])):

    def_string = add_pin(pins[0][i], location, top_y,    'output', def_string)
    def_string = add_pin(pins[1][i], location, bottom_y, 'output', def_string)

    location += args.out_pitch


print(def_string)

####################################################################################################################################################################################
# write control inputs

x = 1000*int(str(args.die_area).split(',')[2]) - args.in_offset
location    = 1000*int(str(args.die_area).split(',')[3]) / 2 - 7 * args.in_pitch

def_string = add_pin('clk_i', x, location, 'input', def_string)
location += args.in_pitch

def_string = add_pin('rst_ni', x, location, 'input', def_string)
location += args.in_pitch

def_string = add_pin('randomise_en_i', x, location, 'input', def_string)
location += args.in_pitch

for i in range(args.in_binary):
    def_string = add_pin('input_binary_i[%d]' % i, x, location, 'input', def_string)
    location += args.in_pitch

def_string += 'END PINS\n'
def_string += 'END DESIGN\n'


#################################################################################################
# write out the file

with open(args.output_def, 'w') as f_output:

    f_output.write(def_string)