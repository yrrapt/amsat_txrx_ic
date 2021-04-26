#!/usr/bin/python3
import random
import pickle
import argparse

# define input parameters
parser = argparse.ArgumentParser()
parser.add_argument("--out_pitch",    default=1380,                help="Pitch for output pins")
parser.add_argument("--out_start",    default=5640,                help="Starting location of output pins")
parser.add_argument("--out_offset",   default=241,                 help="Output pins offset from edge")
parser.add_argument("--out_segments", default=256,                 help="Number of segmented outputs")
parser.add_argument("--in_pitch",     default=1360,                help="Pitch for input pins")
parser.add_argument("--in_start",     default=8500,                help="Starting location of input pins")
parser.add_argument("--in_offset",    default=400,                 help="Input pins offset from edge")
parser.add_argument("--in_binary",    default=10,                  help="Number of input binary bits")
parser.add_argument("--die_area",     default='0,0,260000,214000', help="Die area. Comma separated: x0,y0,x1,y1")
args = parser.parse_args()


pins = []

####################################################################################################################################################################################
# write binary outputs
location = args.out_start
top_y    = 1000*int(str(args.die_area).split(',')[3]) - args.out_offset
bottom_y = 1000*int(str(args.die_area).split(',')[1]) + args.out_offset

pins.append({   'name'      : 'output_binary_o[0]',
                'location'  : [location, bottom_y],
                'direction' : 'vertical'})

pins.append({   'name'      : 'output_binary_o[1]',
                'location'  : [location, top_y],
                'direction' : 'vertical'})
location += args.out_pitch


####################################################################################################################################################################################
# write segmented outputs

# create list 
index = [_ for _ in range(args.out_segments)]
random.shuffle(index)

for i in range(int(len(index)/2)):
    pins.append({   'name'      : 'output_thermometer_o[%d]' % index[2*i],
                    'location'  : [location, bottom_y],
                    'direction' : 'vertical'})

    pins.append({   'name'      : 'output_thermometer_o[%d]' % index[2*i+1],
                    'location'  : [location, top_y],
                    'direction' : 'vertical'})
    location += args.out_pitch


####################################################################################################################################################################################
# write control inputs

x = 1000*int(str(args.die_area).split(',')[2]) - args.in_offset
location    = args.in_start

pins.append({   'name'      : 'clk_i',
                'location'  : [x, location],
                'direction' : 'horizontal'})
location += args.in_pitch

pins.append({   'name'      : 'rst_ni',
                'location'  : [x, location],
                'direction' : 'horizontal'})
location += args.in_pitch

pins.append({   'name'      : 'randomise_en_i',
                'location'  : [x, location],
                'direction' : 'horizontal'})
location += args.in_pitch

for i in range(args.in_binary):
    pins.append({   'name'      : 'input_binary_i[%d]' % i,
                    'location'  : [x, location],
                    'direction' : 'horizontal'})
    location += args.in_pitch


####################################################################################################################################################################################
# write specs as output

# specification = {   'die'   : [0, 0, width, top-bottom],
#                     'pins'  : pins}
specification = {'pins'  : pins}

with open('specs.pkl', 'wb') as f:
    pickle.dump(specification, f)