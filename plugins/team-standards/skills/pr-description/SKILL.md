---
name: pr-description
description: Write a pull request description for the current change. Use when asked to open, write or describe a PR.
---
# PR description
Read the diff against the base branch, then write:

**What changed**: one or two sentences.
**Why**: the work item and the reason.
**Contract**: if an API contract changed, the fields, and whether it's breaking. Otherwise "none".
**Other repos**: PRs in other repos this one depends on or that depend on it. Otherwise "none".
**How it was tested**: the commands run and what they showed.

Keep it under 150 words. No headings beyond these five labels.
