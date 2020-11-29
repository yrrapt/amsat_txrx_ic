import os
from subprocess import call

class TestUtilities():
    '''
        A library to perform various utilities helpful for testing
    '''

    def __init__(self):
        '''
            Instantiate the object
        '''

        print('')


    def netlist_generation(self, schematic, folder=None):
        """
            Generate a netlist from schematic
        """

        # start with only the xschem command
        command = ["xschem"]
        command += ["-n"]
        command += ["-q"] 

        # specify the output netlist
        if folder:
            # command += ["-o " + os.getcwd() + "/" + folder]
            command += ["-o"]
            command += [os.getcwd() + "/" + folder]

        # add the schematic
        command += [os.getcwd() + "/" + schematic]

        # perform netlisting
        status = call(command, cwd=os.environ['PROJECT_ROOT'])

