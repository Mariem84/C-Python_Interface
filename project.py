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

#create vector of Records
nr = int(raw_input("Give number of Records :"))
rec = example.RecordVector(nr)
for x in range (0,nr):
	print("Record :")
	rec[x].name = raw_input("name :")
	rec[x].interval = float(raw_input("interval :"))
	rec[x].row_index = int(raw_input("row index :"))
	rec[x].col_index = int(raw_input("column index :"))


#create vector of Materials
n = int(raw_input("Give number of Materials :"))
mv = example.MaterialVector(n)
for x in range (0,n):
	print("Material ",x+1," :")
	mv[x].name = raw_input("name :")
	mv[x].epsilon_r = float(raw_input("epsilon r :"))
	mv[x].mu_r = float(raw_input("mu r :"))
	mv[x].sigma = float(raw_input("sigma :"))


#create vector of Regions
n = int(raw_input("Give number of Regions :"))
rv = example.RegionVector(n)
for x in range (0,n):
	print("Region ",x+1," :")
	rv[x].name = raw_input("name :")
	rv[x].x_start = float(raw_input("start :"))
	rv[x].x_end = float(raw_input("end :"))
	rv[x].material_index = int(raw_input("material index :"))


#create Device
dev = example.Device()
dev.name = raw_input("Give name of the Device :")
dev.materials = mv
dev.regions = rv

#create instance of Scenario
print("Scenario :")
scen = example.Scenario()
scen.name = raw_input("name :")
scen.total_time = s.total_time
scen.timestep = s.timestep
scen.records = rec

#create Results
t = np.linspace(0,s.total_time,s.total_time/s.timestep)
print(len(t))
result = example.ResultVector(nr)
for x in range (0,nr):
	result[x].name = raw_input("Give name of the Result :")
	r = example.simul(dev, scen)
	result[x].data = r[0:int(s.total_time/s.timestep)]
	print(len(result[x].data))

#save in hdf5 File
with h5py.File("f.h5", "w") as hdf:
	resultat = hdf.create_group('Resultat')	
	for x in range (0,nr):
		dataset = resultat.create_dataset("data", data = result[x].data, compression = 'gzip', compression_opts = 9)
		dataset.attrs["name"] = result[x].name
	resultat.attrs["total time"] = s.total_time
	resultat.attrs["time step"] = s.timestep


#load from hdf5 File
with h5py.File("f.h5", "r") as hdf:
	print("List of datasets in this file : ")
	r = hdf.get('Resultat')	
	for i in r.keys():
		print(i)
	data = r.get("data")
	dataset1 = np.array(data)
	print('Metadata : ')
	print(list(r.attrs.keys()))
	print(list(r.attrs.values()))
		

#plot results
for x in range (0,nr):
	plt.plot(t,result[x].data)
	plt.axis([0,5,0,100])
	plt.show()


