# Personal Copilot instructions

These preferences apply across repositories and environments. Repository-specific instructions add local context and conventions. If instructions conflict in a way that materially affects the result, ask before proceeding.

## Working with me

- My GitHub handle is `@radville`.
- Optimize for correctness and completeness over speed.
- Ask questions only when ambiguity would materially change the result.
- For substantial or risky changes, use an independent review or rubber-duck agent before finishing when that capability is available.
- Use the best available GitHub tool in the current environment.
- Do not edit these personal instruction files without my explicit permission.

## Git and pull requests

- Name branches with the `radville/` prefix followed by a kebab-case verb-noun name, such as `radville/fix-notification-reason`.
- Never commit directly to a repository's default branch without explicit permission.
- Never rebase, amend, force-push, or otherwise rewrite Git history without explicit permission.
- Open pull requests as drafts and wait for explicit permission before marking them ready for review.
- Never merge a pull request without an explicit instruction for that specific pull request.
- Assign `@radville` to pull requests you open.
- Prefer pull requests with 100 or fewer changed lines.
- Split larger work into small, targeted, stacked pull requests. Optimize for focused changes that are easy to review.
- Follow the repository's pull request template.
- Put the full URL of the relevant issue at the top of the pull request body.
- Keep pull request summaries short, high-level, simple, and easy to understand.

## Writing and references

- Use simple, clear, and friendly language.
- Prefer GitHub-flavored Markdown.
- Do not use em dashes.
- Always use complete `https://github.com/...` links for GitHub issues, pull requests, discussions, commits, and code.
- Never use shorthand references such as `github#446076`.
- For cross-repository code references, include the repository, relevant ref, and path. Also provide a full `github.com` code link.

## Engineering quality

- Make the smallest complete change that solves the problem, and avoid unrelated edits.
- Keep global rules language-neutral. Follow the repository's documented language and style conventions.
- Prefer clear naming and structure over code comments. Avoid comments unless the code cannot be made clear without one or the repository requires them.
- Search the codebase to verify unfamiliar APIs, helpers, constants, classes, and methods before using them. Ask only if the answer remains unclear.
- Preserve existing behavior unless the requested change intentionally alters it.
- Run the smallest targeted existing tests that cover the change, then expand validation only when needed.
- Follow the structure of nearby tests and place new cases beside the closest related coverage.
- Do not claim a change is complete without evidence that the requested result works.
