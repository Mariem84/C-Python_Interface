import example
import numpy as np
import h5py


mat1 = example.material()
mat2 = example.material()
mat1.name = input("Give name of material 1 :")
mat1.index = 1
mat1.length = input("Give length of material 1 :")
mat1.name = input("Give name of material 2 :")
mat1.index = 2
mat1.length = input("Give length of material 2 :")

rho1 = example.simul()
rho2 = example.simul()



with h5py.File("f.h5", "w") as hdf:
		dataset1 = hdf.create_dataset("rho 1", data = rho1, compression = 'gzip', compression_opts = 9)
		dataset2 = hdf.create_dataset("rho 2", data = rho2, compression = 'gzip', compression_opts = 9)
		dataset1.attrs["name"] = "Population of first Level"
		dataset1.attrs["meta data"] = "additional data"
		dataset2.attrs["name"] = "Population of second Level"
		dataset2.attrs["meta data"] = "additional data"


with h5py.File("f.h5", "r") as hdf:
		print("List of datasets in this file : ")
		for i in hdf.keys():
			print(i)
		data = hdf.get("rho 1")
		dataset1 = np.array(data)
		print('Shape of Dataset 1 : ')
		print(dataset1.shape)
		k = list(data.attrs.keys())
		v = list(data.attrs.values())
		print(k)


