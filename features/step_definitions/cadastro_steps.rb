Dado('que eu acesso a página de cadastro') do
  visit("http://parodify.qaninja.com.br")
  click_on("EXPERIMENTE AGORA")
end

Quando('eu submeter o meu cadastro com:') do |table|
  # O método rows_hash converte a Data Table do Cucumber para um objeto nativo do Ruby
  user = table.rows_hash

  remove_user(user[:email])

  find("input[name*=email]").set(user[:email])
  find("input[placeholder='Sua senha secreta']").set(user[:senha])
  find("input[placeholder='Confirme a senha']").set(user[:confirmacao_senha])

  click_on("Cadastrar")
end

Entao('eu devo ser redirecionado para a área logada') do
  # Page, da forma que está, é um objeto do Capybara
  expect(page).to have_css('.dashboard')
end

Entao('eu devo ver a mensagem {string}') do |expect_message|
alert = find(".message p")
  expect(alert.text).to eql(expect_message)
end

Quando('eu acesso a página de cadastro') do
  # Dynamic steps, para implementar um passo já implementado em outro contexto
  # Pode ser implementado quantos steps forem necessários
  steps %(Dado que eu acesso a página de cadastro)
end

Entao('ela deve conter o seguinte CSS: {string}') do |expect_css|
  expect(page).to have_css(expect_css)
end
