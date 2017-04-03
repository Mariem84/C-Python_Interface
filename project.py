import example
import numpy as np
import h5py


mat1 = example.material(1, 1e-9, "Vaccuum")
mat2 = example.material(2, 1e-9, "Active Region")

rho1 = example.simul()
rho2 = example.simul()


def speichern(file):
	with h5py.File(file, "w") as hdf:
		dataset1 = hdf.create_dataset("rho 1", data = matrix1, compression = 'gzip', compression_opts = 9)
		dataset2 = hdf.create_dataset("rho 2", data = matrix2, compression = 'gzip', compression_opts = 9)
		dataset1.attrs["name"] = "Population of first Level"
		dataset1.attrs["meta data"] = "additional data"
		dataset2.attrs["name"] = "Population of second Level"
		dataset2.attrs["meta data"] = "additional data"

def laden(file):
	with h5py.File(file, "r") as hdf:
		print("List of datasets in this file : ")
		for i in hdf.keys():
			print(i)
		data = hdf.get("dataset 1")
		dataset1 = np.array(data)
		print('Shape of Dataset 1 : ')
		print(dataset1.shape)
		k = list(data.attrs.keys())
		v = list(data.attrs.values())
		print(k)


