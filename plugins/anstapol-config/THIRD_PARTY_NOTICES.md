# Third-party skills

Everything under `skills/` except `unslop` is a vendored copy of someone else's
work. Upstream is the source of truth; `scripts/vendor.sh` pulls the latest
versions for review. Files inside each directory are unmodified copies.

| Skill | Upstream | Licence |
| --- | --- | --- |
| `grilling` | [mattpocock/skills](https://github.com/mattpocock/skills), `skills/productivity/grilling` | MIT (repository `LICENSE`) |
| `frontend-design` | [anthropics/skills](https://github.com/anthropics/skills), `skills/frontend-design` | See `LICENSE.txt` in the directory |
| `karpathy-guidelines` | [forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills), `skills/karpathy-guidelines` | MIT (skill frontmatter) |
| `vercel-react-best-practices` | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills), `skills/react-best-practices` | MIT (skill frontmatter) |
| `vercel-composition-patterns` | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills), `skills/composition-patterns` | MIT (skill frontmatter) |
| `web-design-guidelines` | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills), `skills/web-design-guidelines` | No licence stated in the skill or repository; sibling skills in the same repository declare MIT |

`unslop` is a fork of
[cursor/plugins](https://github.com/cursor/plugins/blob/main/pstack/skills/unslop/SKILL.md),
`pstack/skills/unslop`, with local additions and one rule removed. It is not
refreshed by the vendor script.
