import example
import numpy as np
import h5py
import matplotlib.pyplot as plt


mat1 = example.material()
mat2 = example.material()
mat1.name = raw_input("Give name of material 1 :")
mat1.index = 1
mat1.length = float(raw_input("Give length of material 1 :"))
mat2.name = raw_input("Give name of material 2 :")
mat2.index = 2
mat2.length = float(raw_input("Give length of material 2 :"))

if mat1.length<0 or mat1.length>1e-3 or mat1.length<0 or mat1.length>1e-3:
	raise ValueError("Please enter valid length(s)")

t = np.linspace(0,50,32000)
rho1 = example.simul()
rho2 = example.simul()


plt.figure(1)
plt.subplot(211)
plt.plot(t,rho1)

plt.subplot(212)
plt.plot(t,rho2)
plt.show()


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


