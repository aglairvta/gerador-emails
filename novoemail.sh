#!/bin/zsh

clean_up() {
    setopt +o nomatch
    local files=(/tmp/tmp*.html)
    for file in "${files[@]}"; do
        if [[ -f "$file" ]]; then
            rm "$file" >/dev/null 2>&1
        fi
    done
    setopt -o nomatch
    if [[ -n "$VIRTUAL_ENV" ]]; then
        deactivate >/dev/null 2>&1
    fi
    rm -rf .venv
}

trap clean_up EXIT INT TERM
python -m venv .venv
source .venv/bin/activate
pip install pymailtm
pymailtm -n
