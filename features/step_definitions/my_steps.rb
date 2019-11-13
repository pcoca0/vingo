Given(/^entro a pagina principal$/) do
  visit "/"
end

Then(/^debo ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^presiono boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

