#import "../template/layout-template.typ" as layout
#import "@preview/codelst:2.0.2": sourcecode
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

#show: doc => layout.MainPageSettings(doc)

= Appendices

This section is for any supplementary content that does not fit easily within the main dissertation. Examples include software documentation, user guides, large figures, logs of supervisor meetings, etc. This will not be marked directly but may be used to contextualise the main body of work.

== Appendix A: Code Snippets with Codelst

Here you can see a short snippet of code that was used to implement a simple Python sorting algorithm. The Codelst package provides syntax highlighting for code blocks:

#sourcecode[```python
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

#pagebreak()

== Appendix B: Flowcharts with Fletcher

This uses the Fletcher package to create a flowchart. The package is available at: https://typst.app/universe/package/fletcher/

#diagram(
  node-stroke: 1pt,
  node((0, 0), [Start], corner-radius: 2pt, extrude: (0, 3)),
  edge("-|>"),
  node(
    (0, 1),
    align(center)[
      Is the data\ valid?
    ],
    shape: diamond,
  ),
  edge("r", "-|>", [No]),
  node((1, 1), [Handle Error], corner-radius: 2pt),
  edge((0, 1), (0, 2), "-|>", [Yes]),
  node((0, 2), [Process Data], corner-radius: 2pt),
  edge("-|>"),
  node((0, 3), [End], corner-radius: 2pt, extrude: (0, 3)),
)
