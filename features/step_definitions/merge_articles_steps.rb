And /^the following movies exist:$/ do |table|

  # table is a Cucumber::Ast::Table
  # express the regexp above with the code you wish you had
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

And /^I have an article with Title (.+)$/ do |title|
  if title == "Test"
    Article.create(:title => title, :id => 3, :body => title + " " + title, :published => true)
  elsif title == "Hello World!"
    Article.create(:title => title, :id => 4, :body => title + " " + title, :published => true)
  else
    Article.create(:title => title, :id => 5, :body => title + " " + title, :published => true)
  end
end

