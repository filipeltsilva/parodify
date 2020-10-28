# language: pt

Funcionalidade: Login
  Sendo um usuário previamente cadastrado
  Quero acessar o sistema com meu email e senha
  Para que eu possa ter acesso às playlists do Parodify

Cenário: Login do usuário
  Dado que eu acesso a página de Login
  Quando eu submeter minhas credenciais com: "filipe@filipe.com.br" e "parod123"
  Então eu devo ser redirecionado para a área logada

Esquema do Cenário: Tentativa de Login
  Dado que eu acesso a página de Login
  Quando eu submeter minhas credenciais com: "<email>" e "<senha>"
  Então eu devo ver a mensagem de erro "Opps! Dados de acesso incorretos!"

  Exemplos:
    | email             | senha     |
    | filipe@404.com.br | abc123    |
    |                   |           |
    | filipe@lemos.com  | 123filipe |
    | filipe@404.com.br |           |
    |                   | filipe123 |

