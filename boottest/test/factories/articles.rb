FactoryGirl.define do
	factory :article do
		sequence(:title) { |n| "Article#{n}" }
		body "Blan, Blah, Blah."
		released_at 2.week.ago
		expired_at 2.week.from_now
	end
end