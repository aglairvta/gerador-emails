### Script para gerar e-mails temporários com `pymailtm`

> Este script, projetado para uso no [zsh](https://is.gd/9tbVJ8), facilita a criação de e-mails temporários utilizando a ferramenta [pymailtm](https://is.gd/usiUGW). Ele inclui funcionalidades para limpeza automática, garantindo que arquivos temporários e o ambiente virtual sejam removidos ao final da execução ou em caso de interrupção.
---
### Funcionalidade
   
- Cria e ativa um ambiente virtual Python (`.venv`) para isolar a instalação das dependências.

- Instala a ferramenta `pymailtm` no ambiente virtual. A ferramenta está disponível em [pymailtm](https://is.gd/usiUGW).

- Executa o comando `pymailtm -n` para criar um novo e-mail temporário.
   
- Remove arquivos temporários e desativa o ambiente virtual após a execução ou em caso de interrupção.
---
### Usando como executável

1. **Clone o repositório:**

```
git clone https://github.com/aglairvta/pymailtm-zsh.git
```

2. **Torne o script executável:**

```
sudo chmod +x novoemail.sh
```
---
### Usando como aliás no zsh

> Para facilitar o uso, você pode configurar um alias no zsh, permitindo executar o script com um comando simples.

1. **Clone o repositório:**

```
git clone https://github.com/aglairvta/pymailtm-zsh.git
```

2. **Torne o script executável:**

```
sudo chmod +x novoemail.sh
```

3. **Adicione o alias no `.zshrc`:**

```
nano ~/.zshrc
```

4. **Adicione a seguinte linha ao final do arquivo para criar um alias. No exemplo abaixo, o alias é chamado de `novoemail`, mas você pode escolher qualquer nome que desejar.**

```
alias novoemail='/caminho/para/o/script/novoemail.sh'
```

5. **Recarregue o `.zshrc`:**

```
source ~/.zshrc
```

6. **Execute o alias**:

Agora, você pode usar o novo alias `novoemail` para executar o script diretamente no terminal. Basta digitar o comando:

```
novoemail
```

7. **Finalize e descarte o e-mail:**

```
ctrl + c
```
---
### Exemplo de saída:

![e-mail gerado através da aliás e pymailtm](ex.png)
---
### Créditos

- [pymailtm](https://is.gd/usiUGW)

- [zsh](https://is.gd/9tbVJ8)
