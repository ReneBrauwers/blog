---
title: "Sample post: how an essay is laid out"
date: 2026-10-28
draft: true
category: "Sample / draft"
thesis: "A placeholder showing the layout features. It is not a real essay."
tags: [sample]
diagram_alt: "Example loop: Cause A increases Effect B, which feeds back and reduces Cause A."
diagram_svg: |
  <svg viewBox="0 0 300 150" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
    <defs><marker id="ah" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto"><path d="M0 0L10 5L0 10z" fill="#1d1d1f"/></marker>
    <marker id="ahr" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto"><path d="M0 0L10 5L0 10z" fill="#b3261e"/></marker></defs>
    <rect x="10" y="20" width="90" height="36" fill="#fff" stroke="#1d1d1f"/><text x="55" y="43" text-anchor="middle">Cause A</text>
    <rect x="200" y="20" width="90" height="36" fill="#fff" stroke="#1d1d1f"/><text x="245" y="43" text-anchor="middle">Effect B</text>
    <path d="M100 38H196" stroke="#1d1d1f" fill="none" marker-end="url(#ah)"/><text x="148" y="30" text-anchor="middle">+</text>
    <path d="M245 58C245 130 55 130 55 62" stroke="#b3261e" fill="none" marker-end="url(#ahr)"/><text x="150" y="122" text-anchor="middle" fill="#b3261e">−</text>
  </svg>
---

{{< layer "big-picture" >}}
**This is a sample post, not an essay.** It exists so the layout can be reviewed. It stays `draft: true` and is never published. Delete it once the first real essay is merged.

Each essay opens with the *big picture*: the claim in two or three sentences.
{{< /layer >}}

{{< layer "system" >}}
The *system* layer describes the feedback loops behind the claim. The diagram above comes from the `diagram_svg` front-matter field; a `diagram_mermaid` field works too, and Mermaid is only loaded on pages that use it.{{< sidenote >}}Sidenotes sit in the right margin on wide screens and collapse inline on phones.{{< /sidenote >}}

> A pull quote looks like this.
{{< /layer >}}

{{< layer "detail" >}}
The *detail* layer holds evidence, examples and caveats.{{< sidenote >}}A second sidenote, numbered automatically.{{< /sidenote >}} Related essays appear in the mini-map on the right, based on shared tags and category.
{{< /layer >}}
