---
marp: true
theme: uncover
---
<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

<style>
  :root {
    --color-background: #134;
    --color-background-code: #333;
    --color-background-paginate: #fff;
    --color-foreground: #fff;
    --color-highlight: #99c;
    --color-highlight-hover: #fff;
    --color-highlight-heading: #99c;
    --color-header: #fff;
    --color-header-shadow: transparent;
  }
h1 {
  text-align: center;
}
h4,h3,h2{
    text-align: left
}
ul{
    margin: 0px
}
p{
  text-align: left  
}
</style>

<!-- _paginate: skip -->
# ![width:500px](solidify-logo.png)
---
# Header 1
## Header 2

- item 1
  - item 1.5
- item 2


<!-- 
Add a comment like this and it will be rendered as speaker notes when exporting the slide deck.
- Talk about this.
- and this.
-->

---
# Code block
```javascript
function msg(){  
 alert("Hello javascript");  
}  
``````
---
# Diagram 1
<div class="mermaid">
flowchart TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
    C -->|One| D[Laptop]
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
</div>

---
# Diagram 2
<div class="mermaid">
classDiagram
Class01 <|-- AveryLongClass : Cool
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 --> C2 : Where am i?
Class09 --* C3
Class09 --|> Class07
Class07 : equals()
Class07 : Object[] elementData
Class01 : size()
Class01 : int chimp
Class01 : int gorilla
Class08 <--> C2: Cool label
</div>

---
# Diagram 3
<div class="mermaid">
    gitGraph
       commit
       commit
       branch develop
       commit
       commit
       commit
       checkout main
       commit
       commit
</div>

---
# Math
$$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$

---
# ![width:500px](solidify-logo.png)
