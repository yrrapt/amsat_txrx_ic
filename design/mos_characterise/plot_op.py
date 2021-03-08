import numpy as np
import matplotlib.pyplot as plt
import h5py

filename = 'nfet_01v8.hdf5'

with h5py.File(filename, 'r') as file:

    # grab the data keys
    group_list = list(file.keys())


    # get the indexing values
    indexing_data = file['indexing']
    indexing_data_keys = indexing_data.keys()

    print(list(indexing_data_keys))
    # print(list(indexing_data['l']))
    # print(indexing_data[0])

# print(data)