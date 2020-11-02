Dado('que eu acesso a página de Login') do
  visit("/")
  click_on("Login")
end

Quando('eu submeter minhas credenciais com: {string} e {string}') do |email, password|
  find('#user_email').set(email)
  find('#user_password').set(password)
  click_on('Log in')
end

Entao('eu devo ver a mensagem de erro {string}') do |expect_message|
  message = find(".message .message-body")
  expect(message.text).to eql(expect_message)
end
