#import "../template/layout-template.typ" as layout
#import "@preview/codelst:2.0.2": sourcecode
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

#show: doc => layout.MainPageSettings(doc)

#set heading(numbering: none)
= Appendices

== Appendix A - Code Snippets w/ Codelst
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

== Appendix B - Flowcharts w/ Fletcher
This uses the Fletcher package to create a flowchart. The package is available at: https://typst.app/universe/package/fletcher/

#set text(font: "Comic Neue", weight: 600) // testing: omit

#diagram(
	node-stroke: 1pt,
	node((0,0), [Start], corner-radius: 2pt, extrude: (0, 3)),
	edge("-|>"),
	node((0,1), align(center)[
		Hey, wait,\ this flowchart\ is a trap!
	], shape: diamond),
	edge("d,r,u,l", "-|>", [Yes], label-pos: 0.1)
)