#!/usr/bin/python3
def uniq_add(my_list=[]):
    new_set = set()
    for element in my_list:
        new_set.add(element)
        result = sum(new_set)
    return(result)
