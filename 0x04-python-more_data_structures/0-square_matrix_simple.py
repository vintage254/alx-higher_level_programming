#!/usr/bin/python3
def square_matrix_simple(matrix=[]):
    double_matrix = []
    for row in matrix:
        new_rows = []
        for element in row:
            squared_element = element * element
            new_rows.append(squared_element)
        double_matrix.append(new_rows)
    return(double_matrix)
