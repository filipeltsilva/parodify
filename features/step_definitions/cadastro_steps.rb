Dado('que eu acesso a página de cadastro') do
  visit("http://parodify.qaninja.com.br")
  click_on("EXPERIMENTE AGORA")
end

Quando('eu submeter o meu cadastro com:') do |table|
  # O método rows_hash converte a Data Table do Cucumber para um objeto nativo do Ruby
  user = table.rows_hash
  find("input[name*=email]").set(user[:email])
  find("input[placeholder='Sua senha secreta']").set(user[:senha])
  find("input[placeholder='Confirme a senha']").set(user[:confirmacao_senha])
  sleep(5)
end

Entao('eu devo ser redirecionado para a área logada') do

end
