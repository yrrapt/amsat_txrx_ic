import re
import pickle
import argparse
import random

# define input parameters
parser = argparse.ArgumentParser()
parser.add_argument("input_def",                                   help="Location to save the output DEF file ")
parser.add_argument("--out_pitch",    default=920,                 help="Pitch for output pins")
parser.add_argument("--out_start",    default=5640,                help="Starting location of output pins")
parser.add_argument("--out_offset",   default=140,                 help="Output pins offset from edge")
parser.add_argument("--out_segments", default=256,                 help="Number of segmented outputs")
parser.add_argument("--in_pitch",     default=1360,                help="Pitch for input pins")
parser.add_argument("--in_start",     default=8500,                help="Starting location of input pins")
parser.add_argument("--in_offset",    default=600,                 help="Input pins offset from edge")
parser.add_argument("--in_binary",    default=10,                  help="Number of input binary bits")
parser.add_argument("--die_area",     default='0,0,260000,214000', help="Die area. Comma separated: x0,y0,x1,y1")
parser.add_argument("--output_def",   default='pin_locations.def', help="Location to save the output DEF file ")
args = parser.parse_args()


# read in the file
with open(args.input_def, 'r') as f_input:

    def_contents = f_input.read()

    # split the file
    contents   = re.split(r'(PINS.*;[\S\s]*?END PINS)', def_contents)


    def_string = 'PINS 271 ;\n'

    ####################################################################################################################################################################################
    # function for generating pin definiton
    def add_pin(name, x, y, direction, def_string):

        if direction == 'output':
            def_string += '    - %s + NET %s + DIRECTION OUTPUT + USE SIGNAL + PLACED ( %d %d ) N + LAYER met2 ( -70 -140 ) ( 70 140 ) ;\n' % (name, name, x, y)
        else:
            def_string += '    - %s + NET %s + DIRECTION INPUT + USE SIGNAL + PLACED ( %d %d ) N + LAYER met3 ( -600 -300 ) ( 600 300 ) ;\n' % (name, name, x, y)

        return def_string

    ####################################################################################################################################################################################
    # write binary outputs
    location = args.out_start
    top_y    = 1000*int(str(args.die_area).split(',')[3]) - args.out_offset
    bottom_y = 1000*int(str(args.die_area).split(',')[1]) + args.out_offset


    def_string = add_pin('output_binary_o[0]', location, bottom_y, 'output', def_string)
    def_string = add_pin('output_binary_o[0]', location, top_y,    'output', def_string)

    location += args.out_pitch


    #################################################################################################
    # change pin locations

    index = [_ for _ in range(args.out_segments)]
    random.shuffle(index)

    for i in range(int(len(index)/2)):

        def_string = add_pin('output_thermometer_o[%d]' % index[2*i],   location, bottom_y, 'output', def_string)
        def_string = add_pin('output_thermometer_o[%d]' % index[2*i+1], location, top_y,    'output', def_string)

        location += args.out_pitch


    ####################################################################################################################################################################################
    # write control inputs

    x = 1000*int(str(args.die_area).split(',')[2]) - args.in_offset
    location    = args.in_start

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

#################################################################################################
# write out the file
if args.output_def:
    file_out = args.output_def
else:
    split = args.input_def.split('.')
    file_out = split[0] + '_out.' + split[1]

with open(file_out, 'w') as f_output:

    f_output.write(contents[0])
    f_output.write(def_string)
    f_output.write(contents[2])