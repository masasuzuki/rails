#coding: utf-8

0.upto(29) do |idx|
	Article.create(
		{ title: "Article#{idx+10}",
		body: "blah, blah, blah..",
		released_at: 100.days.ago.advance(days: idx),
		expired_at: nil,
		member_only: false
		}, without_protection: true
	)
end