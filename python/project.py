import example
import numpy as np
import h5py
import matplotlib.pyplot as plt
import dexml
from dexml import fields
import lxml.etree as etree

f = raw_input("Give name of the XML File to load settings :") 

class record(dexml.Model):
	name = fields.String(tagname="name")
	interval = fields.Float(tagname="interval")
	row_index = fields.Integer(tagname="row_index")
	col_index = fields.Integer(tagname="col_index")

class settings(dexml.Model):
	total_time = fields.Float(tagname="total_time")
	timestep = fields.Float(tagname="timestep")
	records = fields.List(record)
	

#parse XML File
tree = etree.parse(f)
xmlstr = etree.tostring(tree, encoding='utf8', method='xml', pretty_print = True)
s = settings.parse(xmlstr)
print(s.total_time, s.timestep)

#create vector of Records
nr = len(s.records)
rec = example.RecordVector(nr)
for x in range (0,nr):
	print("Record :")
	rec[x].set_rec_name(str(s.records[x].name))
	rec[x].set_rec_interval(s.records[x].interval)
	rec[x].set_rec_row_index(s.records[x].row_index)
	rec[x].set_rec_col_index(s.records[x].col_index)


#create vector of Materials
n = int(raw_input("Give number of Materials :"))
mv = example.MaterialVector(n)
for x in range (0,n):
	print("Material ",x+1," :")
	mv[x].set_m_name(raw_input("name :"))
	mv[x].set_m_epsilon_r(float(raw_input("epsilon r :")))
	mv[x].set_m_mu_r(float(raw_input("mu r :")))
	mv[x].set_m_sigma(float(raw_input("sigma :")))


#create vector of Regions
n = int(raw_input("Give number of Regions :"))
rv = example.RegionVector(n)
for x in range (0,n):
	print("Region ",x+1," :")
	rv[x].set_reg_name(raw_input("name :"))
	rv[x].set_reg_x_start(float(raw_input("start :")))
	rv[x].set_reg_x_end(float(raw_input("end :")))
	rv[x].set_reg_material_index(int(raw_input("material index :")))


#create Device
dev = example.Device()
dev.set_d_name(raw_input("Give name of the Device :"))
dev.set_d_materials(mv)
dev.set_d_regions(rv)

#create instance of Scenario
print("Scenario :")
scen = example.Scenario()
scen.set_s_name(raw_input("name :"))
scen.set_s_total_time(s.total_time)
scen.set_s_timestep(s.timestep)
scen.set_s_records(rec)

#create Results
t = np.linspace(0,s.total_time,s.total_time/s.timestep)
print(len(t))
result = example.simul(dev, scen)
for x in range (0,nr):
	result[x].name = raw_input("Give name of the Result :")
	print(len(np.array(result[x].get_r_data())))

#save in hdf5 File
with h5py.File("f.h5", "w") as hdf:
	resultat = hdf.create_group('Resultat')	
	for x in range (0,nr):
		dataset = resultat.create_dataset("data", data = np.array(result[x].get_r_data()), compression = 'gzip', compression_opts = 9)
		dataset.attrs["name"] = result[x].get_r_name()
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
	plt.plot(t,np.array(result[x].get_r_data()))
	plt.axis([0,5,0,100])
	plt.show()


