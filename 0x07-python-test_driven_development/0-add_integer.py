#!/usr/bin/python3
def add_integer(a, b=98):
    """Retur the sum of integer a and b .
    raises typeerror if a and b are not floats and integrers 
    """
    if (not isinstance(a, int) and not isinstance (a, float)):
        raise TypeError("a must be an interger")
    if (not isinstance(b, int) and not isinstance (b, float)):
        raise TypeError("b must be an interger")
    return (int(a) + int(b))
