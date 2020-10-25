#language: pt

Funcionalidade: Cadastro de usuários
  Sendo um visitante do site Parodify
  Quero fazer o meu cadastro
  Para que eu possa ouvir minhas músicas favoritas
@mk
Cenário: Efetuar cadastro com sucesso
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro com:
    | email | filipe@lemos.com |
    | senha | filipe123 |
    | confirmacao_senha | filipe123 |
  Então eu devo ser redirecionado para a área logada

Cenário: Efetuar cadastro com e-mail não informado
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro sem o e-mail
  Então eu devo ver a mensagem Oops! Informe seu e-mail

Cenário: Efetuar cadastro com senha não informada
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro sem a senha
  Então eu devo ver a mensagem Oops! Informe sua senha

Cenário: Efetuar cadastro com senha divergente
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro com as senhas divergentes
  Então eu devo ver a mensagem Oops! Senhas não são iguais

Cenário: Efetuar cadastro com nenhum campo preenchido
  Dado que eu acesso a página de cadastro
  Quando eu submeter o meu cadastro sem preencher os campos
  Então eu devo ver a mensagem Oops! Informe seu e-mail e sua senha
