
When(/^search for "(.*?)"$/) do |arg1|
	fill_in('search', :with => $search)
	find_field('search').native.send_key(:enter)
end

Then(/^I see (\d+) book as a result$/) do |arg1|
	page.has_text? 'Books: '+arg1
end

Then(/^I see (\d+) books as a result$/) do |arg1|
	page.has_text? 'Books: '+arg1
end

Then(/^I see (\d+) authors as a result$/) do |arg1|
	page.has_text? 'Authors: '+arg1
end

Then(/^I see (\d+) tags as a result$/) do |arg1|
	page.has_text? 'Tags: '+arg1
end

Then(/^I see (\d+) series as a result$/) do |arg1|
	page.has_text? 'Series: '+arg1
end