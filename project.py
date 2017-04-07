import example
import numpy as np
import h5py
import matplotlib.pyplot as plt
import dexml
from dexml import fields
import lxml.etree as etree

f = raw_input("Give name of the XML File to load settings :") 

class settings(dexml.Model):
	total_time = fields.Float(tagname="total_time")
	timestep = fields.Float(tagname="timestep")
	

#parse XML File
tree = etree.parse(f)
xmlstr = etree.tostring(tree, encoding='utf8', method='xml', pretty_print = True)
s = settings.parse(xmlstr)
print(s.total_time, s.timestep)

#create 2 instances of Material
mat1 = example.Material()
mat2 = example.Material()
mat1.name = raw_input("Give name of material 1 :")
mat1.index = 1
mat1.length = float(raw_input("Give length of material 1 :"))
mat2.name = raw_input("Give name of material 2 :")
mat2.index = 2
mat2.length = float(raw_input("Give length of material 2 :"))

#check lengths
if mat1.length<0 or mat1.length>1e-3 or mat1.length<0 or mat1.length>1e-3:
	raise ValueError("Please enter valid length(s)")

#create instances of Record
rec1 = example.Record()
rec2 = example.Record()

#create instances of Regions
reg1 = example.Region()
reg2 = example.Region()

#create instances of Devices
dev1 = example.Device()
dev2 = example.Device()

#create instance of Scenario
scen = example.Scenario()

#create rho1 & rho2
t = np.linspace(0,s.total_time,s.total_time/s.timestep)
r1 = example.simul(dev1, scen)
r2 = example.simul(dev2, scen)

rho1 = r1[0:int(s.total_time/s.timestep)]
rho2 = r2[0:int(s.total_time/s.timestep)]



#save in hdf5 File
with h5py.File("f.h5", "w") as hdf:
	resultat = hdf.create_group('Resultat')	
	dataset1 = resultat.create_dataset("rho 1", data = rho1, compression = 'gzip', compression_opts = 9)
	dataset2 = resultat.create_dataset("rho 2", data = rho2, compression = 'gzip', compression_opts = 9)
	dataset1.attrs["name"] = "Population of first Level"
	dataset2.attrs["name"] = "Population of second Level"
	resultat.attrs["total time"] = s.total_time
	resultat.attrs["time step"] = s.timestep


#load from hdf5 File
with h5py.File("f.h5", "r") as hdf:
	print("List of datasets in this file : ")
	for i in hdf.keys():
		print(i)
	r = hdf.get('Resultat')
	data = r.get("rho 1")
	dataset1 = np.array(data)
	print('Metadata : ')
	print(list(r.attrs.keys()))
	print(list(r.attrs.values()))
		

#plot rho1 & rho2
plt.figure(1)
plt.subplot(211)
plt.plot(t,rho1)
plt.axis([0,5,0,10])

plt.subplot(212)
plt.plot(t,rho2)
plt.axis([0,5,0,10])
plt.show()


