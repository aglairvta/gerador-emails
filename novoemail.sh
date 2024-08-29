#!/bin/zsh

# Função de limpeza que será chamada no final da execução do script
clean_up() {
    # Desabilita a opção de não corresponder a arquivos em caso de glob vazio
    setopt +o nomatch

    # Remove arquivos temporários HTML em /tmp
    local files=(/tmp/tmp*.html)
    for file in "${files[@]}"; do
        if [[ -f "$file" ]]; then
            rm "$file" >/dev/null 2>&1
        fi
    done

    # Reabilita a opção de não corresponder a arquivos
    setopt -o nomatch

    # Se um ambiente virtual estiver ativo, desative-o
    if [[ -n "$VIRTUAL_ENV" ]]; then
        deactivate >/dev/null 2>&1
    fi

    # Remove o diretório do ambiente virtual
    rm -rf .venv
}

# Define a função de limpeza para ser chamada nos sinais EXIT, INT e TERM
trap clean_up EXIT INT TERM

# Cria um novo ambiente virtual
python -m venv .venv

# Ativa o ambiente virtual
source .venv/bin/activate

# Instala o pacote pymailtm
pip install pymailtm

# Executa o comando pymailtm com a opção -n
pymailtm -n