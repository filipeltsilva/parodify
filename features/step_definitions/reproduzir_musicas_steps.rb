Dado("Login com {string} e senha {string}") do |email, password|
  visit("http://parodify.qaninja.com.br")
  click_on("Login")
  find("#user_email").set(email)
  find("#user_password").set(password)
  click_on("Log in")
end

Dado("que eu gosto de {string}") do |rhythm|
  find("a[href='/search/new']").click
  find("img[src$='#{rhythm.downcase}.png']").click
end

Quando("eu toco a seguinte música:") do |table|
  @song = table.rows_hash

  # Estratégia de escopo do Capybara, passando uma propriedade do Data Table como parâmetro de objeto a ser procurado
  find("a", text: @song[:banda]).click

  song_name = find(".song-item", text: @song[:parodia])
  song_name.find(".fa-play-circle").click
end

Entao("essa paródia deve ficar em modo de reprodução") do
  song_playing = find(".playing")
  expect(song_playing).to have_text(@song[:parodia])
end
