import os

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

        print(folder)

        # start with only the xschem command
        command = "xschem -n -q "

        # specify the output netlist
        if folder:
            command += "-o " + folder + " "

        # add the schematic
        command += schematic

        print(command)

        # perform netlisting
        os.system(command)

