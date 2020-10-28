#language: pt

Funcionalidade: Cadastro de usuários
  Sendo um visitante do site Parodify
  Quero fazer o meu cadastro
  Para que eu possa ouvir minhas músicas favoritas

Cenário: Efetuar cadastro com sucesso
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro com:
    | email             | filipe@lemos.com |
    | senha             | filipe123        |
    | confirmacao_senha | filipe123        |
  Então eu devo ser redirecionado para a área logada

Esquema do Cenário: Tentar efetuar cadastro com dados inválidos
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro com:
    | email             | <email>             |
    | senha             | <senha>             |
    | confirmacao_senha | <confirmacao_senha> |
  Então eu devo ver a mensagem "<mensagem_saida>"

  Exemplos:
    | email            | senha     | confirmacao_senha | mensagem_saida                       |
    |                  | filipe123 | filipe123         | Oops! Informe seu email.             |
    | filipe@lemos.com |           |                   | Oops! Informe sua senha.             |
    | filipe@lemos.com | filipe123 | 123filipe         | Oops! Senhas não são iguais.         |
    |                  |           |                   | Oops! Informe seu email e sua senha. |
@temp
Cenário: Validar campo de email na tela de cadastro
  Quando eu acesso a página de cadastro
  Então ela deve conter o seguinte CSS: "input[type=email]"
