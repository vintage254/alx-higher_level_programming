#!/usr/bin/python3
"""
Defines a base model class
"""
class Base:
    """
    represents the base model
    """
    __nb_objects = 0
    def __init__(self, id=None):
        if id is not None:
            self.id = id 
        else:
            base.__nb_objects += 1
            self.id = base.__nb_objects
if __name __ == "__main__":

    b1 = Base()
    print(b1.id)

    b2 = Base()
    print(b2.id)
    
    b3 = Base()
    print(b3.id)
    
    b4 = Base()
    print(b4.id)
    
    b5 = Base()
    print(b5.id)
