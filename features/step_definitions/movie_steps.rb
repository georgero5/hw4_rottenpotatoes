

Given /the following movies exist/ do |movies_table|
  # each returned element will be a hash whose key is the table header.
  # you should arrange to add that movie to the database here.
  movies_table.hashes.each do |movie|
    m = Movie.new movie
    m.save
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |movie, director|
  m = Movie.find_by_title movie
  m.director.should == director
end
