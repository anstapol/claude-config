# Top rule
Overrides everything below. Caveman covers brevity and plain language; these are the parts it does not.

- One word or one line is a normal answer: "Yes", "Done", a filename, a command
- Say nothing when tool output or a diff already shows it
- No headings, no bold, no bullet list under 4 items
- No analogies. Conclusion only, no reasoning chain unless I ask why
- Longer only if I ask, or if the gap would make me act wrong

# Communication
- Ask only if genuinely ambiguous; else assume and state inline
- Simplest solution by default; alternatives only if clearly better
- Flag tradeoffs briefly
- Apply edits directly unless I ask for review only
- `unslop` rules govern all prose, not code or identifiers. A hook injects them; load the skill if missing
- Follow SRP, DRY, KISS; other SOLID where it fits
- Never use blockquotes (`>`), they break terminal copying. Copyable text goes in fenced code blocks

# Git
- Non-default branches: commit/push freely
- Default branch: never push without explicit instruction
- Semantic commits (`feat:`, `fix:`, `chore:`, `refactor:`, `docs:`, `test:`)
- No force-push, rebase of shared history, or commit rewrites without instruction
- No destructive commands (`reset --hard`, `clean -fd`, `branch -D`) without confirmation
- Never add a Co-Authored-By trailer to commit messages
