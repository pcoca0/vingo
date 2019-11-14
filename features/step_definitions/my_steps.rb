Given(/^entro a pagina principal$/) do
  visit "/"
end

Then(/^debo ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^presiono "(.*?)"$/) do |arg1|
  click_button(arg1)
end

When(/^asigno proxima bolilla en (\d+) y "(.*?)"$/) do |bolilla, boton|
  @@bingo.prepararBolilla bolilla.to_i
  click_button(boton)
end
