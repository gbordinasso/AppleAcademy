# Loja De Itens
Desafio do processo da Apple Academy – Sistema de Loja de Itens RPG em Swift
# 🏪 Loja RPG – Desafio Apple Academy

Este projeto foi desenvolvido para o desafio do processo seletivo da **Apple Developer Academy | SENAC**.  
Ele foi construído usando apenas conceitos iniciais do Swift.

---

## 🎮 Sobre o Projeto

O sistema simula uma **Loja de Itens** interativa, onde o jogador pode:

- Ver seu status (nome, nível e dinheiro)
- Consultar os itens s disponíveis na loja
- Comprar itens (com verificação de nível e custo)
- Vender itens da mochila
- Ver os itens que possui
- Sair do jogo

Tudo funciona diretamente pelo **console**, usando `readLine()` para interações com o usuário.

---

## 🔧 Conceitos Utilizados

Utilizando apenas:

- Variáveis simples (`String`, `Int`)
- Arrays
- Funções tradicionais
- Condicionais (`if`, `else`)
- Loops (`while`)
- Tratamento de erros com `enum`, `throw`, `try` e `catch`
- Entrada e saída de dados no console
- Menu baseado em `switch`
- Strings multilinha `"""`

Perfeito para demonstrar domínio dos fundamentos visto no workshop.

---

## 📦 Estrutura do Sistema

### ▶️ Loja
Representada por 3 arrays paralelos, onde cada índice representa um item:

- `nomesItens`
- `custosItens`
- `niveisMinimos`

Cada índice representa um item da loja.

### 🎒 Mochila do Jogador
Armazenada em dois arrays:

- `mochilaNomes`
- `mochilaCustos`
- 
📌 Ao vender um item:
O jogador recebe 50% do valor pago, calculado automaticamente no menu de venda.

### 🧍 Jogador
O jogador começa escolhendo seu nome, e suas características iniciais são definidas automaticamente:

- Dinheiro inicial: aleátorio entre 300 e 600
- Nivel inicial: aleátorio entre 1 e 6

A cada partida esses valores se tornam diferente.


---

## ▶️ Como executar

1. Abra o Xcode ou qualquer editor que suporte Swift.
2. Crie um novo arquivo `main.swift` ou um Playground.
3. Cole o código completo do projeto.
4. Execute.
5. Siga as instruções do menu.

O jogo solicitará apenas o nome do jogador.  
Todos os outros valores são definidos automaticamente.


---

## 🧠 O que eu aprendi criando este projeto

- Como montar menus interativos no console  
- Como organizar informações usando arrays  
- Como validar entradas do usuário  
- Como usar `do` e `catch` de forma prática  
- Como dividir o código em funções  
- Como modelar um sistema simples sem precisar de Structs  
- Como criar lógica de compra e venda de itens  

---

## 🎓 Sobre

Projeto desenvolvido como parte do desafio técnico da  
**Apple Developer Academy | SENAC Santo Amaro**.

Autor: **Gustavo Bordinasso**

