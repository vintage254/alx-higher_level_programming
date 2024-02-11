#!usr/bin/python
from models.rectangle import Rectangle 
"""
square module
"""
class Square(Rectangle):
    """
    the square class 
    """
    def __init__(self, size, x=0, y=0, id= None):
        super().__init__(size, size, x, y, id)

    def __str__(self):
        """
        string reprasantation
        """
        return "[Square] ({}) {}/{} - {}".format(self.id, self.x, self.y, self.width)
