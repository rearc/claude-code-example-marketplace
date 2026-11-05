#!/bin/bash
# PreToolUse (Edit, Write, MultiEdit): block hand edits to orders-api's generated code.
input="$(cat)"
if printf '%s' "$input" | grep -Eq '"file_path" *: *"[^"]*orders_api(/|\\\\)generated(/|\\\\)'; then
  echo "orders-api-guard: src/orders_api/generated/ is generated. Change openapi.json and run python3 scripts/generate.py." >&2
  exit 2
fi
exit 0
