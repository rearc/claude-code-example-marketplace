#!/bin/bash
# PreToolUse (Bash): block "git push --force" and "git push -f". --force-with-lease is allowed.
input="$(cat)"
if printf '%s' "$input" | grep -Eq 'git push[^"]*( --force([^-]|$)| -f([ "]|$))'; then
  echo "team-standards: force push is blocked. Use --force-with-lease, or ask a person to push." >&2
  exit 2
fi
exit 0
