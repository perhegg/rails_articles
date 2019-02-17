Given("I visit the site") do 
    visit root_path
end

Then("I should see {string}") do |blog|
    expect(page).to have_content blog     
end
  

When("I click on {string}") do |button_name|
    click_on button_name
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
end

Then("I can see {string}") do |content|
    expect(page).to have_content content
end

When("I fill in {string} with {string}") do |title, input|
    fill_in title, with: input
end
  