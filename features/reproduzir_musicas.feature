# language: pt

Funcionalidade: Reproduzir Paródia
  Sendo um usuário cadastrado
  Quero reproduzir músicas no player do Parodify
  Para que eu possa ouvir as paródias das minhas músicas favoritas

Contexto: Login
  # O asterísco deixa o step do contexto mais genérico e direciona o foco para os cenários
  # step com asterísco é gerado um método Dado por padrão do Cucumber
  * Login com "filipe@filipe.com.br" e senha "parod123"

Cenário: Ouvir Paródia
  Dado que eu gosto de "Rock"
  Quando eu toco a seguinte música:
    | parodia | Sprints de Luta Sprints de Gloria |
    | banda   | Charlie Brown Bug                 |
  Então essa paródia deve ficar em modo de reprodução
