# claude-code-example-marketplace

An example **team plugin marketplace** for Claude Code. Part of the
[claude-code-example-team-setup](https://github.com/rearc/claude-code-example-team-setup) example.

| Plugin | Turned on by | Holds |
|---|---|---|
| `team-standards` | every team repo | the `pr-description` skill; a hook that blocks `git push --force` |
| `orders-api-guard` | orders-api only | a hook that blocks hand edits to orders-api's generated code |

Why these are plugins: a repo's own settings hooks apply only when Claude starts in that repo. A
hook in a plugin the repo turns on applies in every session that loads the repo. And a skill
every repo uses is kept once here instead of copied into each repo.

What isn't here: CLAUDE.md, rules and permission rules. Plugins can't carry them; they stay in
each repo.

## Use from a repo
In the repo's `.claude/settings.json`:
```json
{
  "enabledPlugins": { "team-standards@example-team-tools": true },
  "extraKnownMarketplaces": {
    "example-team-tools": { "source": { "source": "github", "repo": "rearc/claude-code-example-marketplace" } }
  }
}
```
A marketplace in Azure DevOps or another git host uses a git URL instead:
`{ "source": "git", "url": "https://dev.azure.com/<org>/<project>/_git/<repo>" }`.

Each person installs once per machine:
```
claude plugin marketplace add rearc/claude-code-example-marketplace --scope project
claude plugin install team-standards@example-team-tools --scope project
```

## Check it
```
claude plugin validate .
```
