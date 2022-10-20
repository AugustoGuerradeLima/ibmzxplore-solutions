from zoautil_py import datasets
members_list = datasets.list_members("Z.OUTPUT")
for member in range(len(members_list)):
    print(str(member+1) + ": " + members_list[member])