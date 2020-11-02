Before do
  page.current_window.resize_to(1366, 768)
end

After do
  shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(shot)
  )
end
