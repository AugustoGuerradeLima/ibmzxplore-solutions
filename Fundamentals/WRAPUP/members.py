from zoautil_py import datasets, jobs, zsystem
import sys, os

dsname = input("Enter the Sequential Data Set name: ")
dsname = dsname.upper().replace("'","").replace(os.environ.get('LOGNAME')+".","")
dsname = f"'{os.environ.get('LOGNAME')}.{dsname}'"
print(dsname)

if (datasets.exists(dsname) == True):
    print("Data set found! We will use it")
else:
    create_new = input("Data set not found. Should we create it? (y/n) : ")
    if (create_new.upper() == "Y"):
        datasets.create(dsname,type="SEQ",primary_space="1k",secondary_space="1k")
    else: sys.exit("Without a data set name, we cannot continue. Quitting!")
dsname=dsname.replace("'","")

linklist_output = zsystem.list_linklist()

linklist_output = str(linklist_output).replace(',','\n')
print(linklist_output)

datasets.write(dsname,linklist_output,append=False)