#import "@preview/codelst:2.0.2": sourcecode
#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)


= Implementation

== Source Code Demo

This section should demonstrate your solution from a technical perspective, showing
the different components of your software. You may wish to include code snippets
and screenshots as figures to provide detail where necessary.

=== Code Snippets
Here you can see a short snippet of the code that was used to implement a simple Python sorting algorithm:

#sourcecode[```Python 
def bubble_sort(array):
    n = len(array)

    for i in range(n):

        already_sorted = True

        for j in range(n - i - 1):
            if array[j] > array[j + 1]:

                array[j], array[j + 1] = array[j + 1], array[j]

                already_sorted = False

        if already_sorted:
            break
    return array
```] 