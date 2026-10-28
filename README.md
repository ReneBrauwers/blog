# blog.reneb.au

Rene Brauwers' essay blog — *Root causes, not symptoms*. Built with [Hugo](https://gohugo.io) and deployed to GitHub Pages by `.github/workflows/pages.yml` (builds on every PR, deploys on push to `main`). The 2011–2019 archive lives at https://blog-archive.reneb.au.

## Publishing an essay

1. `scripts/new-post.sh "Essay title"` — creates branch `post/<slug>` and `content/essays/<slug>.md` (draft).
2. Write it. Preview with `hugo server -D` at http://localhost:1313.
3. Set `draft: false`, commit, push, and open a pull request.
4. Rene reviews and approves; merging to `main` publishes it automatically.

No script? Copy `archetypes/essays.md` into `content/essays/` and fill it in.

### Front matter
| Field | Purpose |
|---|---|
| `thesis` | One-line thesis on the homepage card and as the meta description |
| `category` | Small red kicker above the title |
| `tags` | Drives the "Related essays" mini-map |
| `diagram_svg` / `diagram_mermaid` | Optional causal-loop diagram (Mermaid JS loads only on pages that use it) |
| `diagram_alt` | Screen-reader description of the diagram |

### Article shortcodes
- `{{< layer "big-picture" >}}…{{< /layer >}}`, also `"system"` and `"detail"` — the three zoom levels.
- `{{< sidenote >}}…{{< /sidenote >}}` — margin note on desktop, inline on mobile.

## Config
`hugo.toml` → `[params]`: `umamiWebsiteId` (Umami at stats.reneb.au; empty = no script), `archiveURL`, `homeURL`, `tagline`. RSS (`/index.xml`), `sitemap.xml`, OG/Twitter tags and canonical URLs are generated automatically. `static/CNAME` holds `blog.reneb.au`.
