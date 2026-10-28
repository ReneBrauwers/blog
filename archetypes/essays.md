---
title: "{{ replace .File.ContentBaseName "-" " " | title }}"
date: {{ .Date }}
draft: true
category: ""            # e.g. "Systems thinking"
thesis: ""              # one-line thesis, shown on the homepage card
tags: []
# Optional causal-loop diagram (pick one, or delete both):
# diagram_svg: |
#   <svg viewBox="0 0 300 160" xmlns="http://www.w3.org/2000/svg">...</svg>
# diagram_mermaid: |
#   flowchart LR
#     A[Cause] -->|+| B[Effect]
#     B -->|-| A
diagram_alt: ""         # describe the diagram for screen readers
---

{{</* layer "big-picture" */>}}
The short version.
{{</* /layer */>}}

{{</* layer "system" */>}}
The forces and feedback loops.{{</* sidenote */>}}A margin note.{{</* /sidenote */>}}
{{</* /layer */>}}

{{</* layer "detail" */>}}
Evidence and specifics.
{{</* /layer */>}}
