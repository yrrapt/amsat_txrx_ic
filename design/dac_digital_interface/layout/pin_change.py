import re
import pickle
import argparse

# define input parameters
parser = argparse.ArgumentParser()
parser.add_argument("input_def",     help="Input DEF file to be modified")
parser.add_argument("configuration", help="Pickle configuration of changes to make")
parser.add_argument("--output_def",  help="Location to save the output DEF file ")
args = parser.parse_args()

#################################################################################################
# read in the configuration
with open(args.configuration, 'rb') as pkl_file:
    specification = pickle.load(pkl_file)

# read in the file
with open(args.input_def, 'r') as f_input:

    def_contents = f_input.read()

    # split the file
    contents   = re.split(r'(PINS.*;[\S\s]*?END PINS)', def_contents)

    #################################################################################################
    # If requiredm, change die area
    if 'die' in specification:
        die_specification = specification['die']
        replace = 'DIEAREA ( %d %d ) ( %d %d ) ;' % (die_specification[0], die_specification[1], die_specification[2], die_specification[3])
        contents[0] = re.sub(r'DIEAREA.*', replace, contents[0])


    #################################################################################################
    # change pin locations
    pins = contents[1]
    pin_specification = specification['pins']
    for pin in pin_specification:

        string = ''
        for i, line in enumerate(pins.split("\n")):
            if pin['name'] in line:
                selected = line.strip()

                location = ' %d %d ' % (pin['location'][0], pin['location'][1])
                replace = r'\1' + location + r'\2'
                selected = re.sub(r'(PLACED \() \S* \S* (\))', replace, selected)
                string += selected + '\n'

            else:
                string += line + '\n'
        pins = string[:-1]

#################################################################################################
# write out the file
if args.output_def:
    file_out = args.output_def
else:
    split = args.input_def.split('.')
    file_out = split[0] + '_out.' + split[1]

with open(file_out, 'w') as f_output:

    f_output.write(contents[0])
    f_output.write(pins)
    f_output.write(contents[2])