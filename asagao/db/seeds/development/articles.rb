#coding: utf-8

0.upto(9) do |idx|
	Article.create(title: "練習試合の結果#{idx}" + (idx % 3 == 0 ? "★" : ""),
		body: "Morning Gloryが4対2でSunflowwerに勝利。\n2回表、6番渡辺の二塁打から7番山田、8番高橋の連続タイムリーで2点先制。9回表、ランナー一二塁で2番田中の二塁打で2点を挙げ、ダメを押しました。\n投げては初先発の山本が7回を2点に抑え、伊藤、中村とつないで逃げ切りました。",
		released_at: 8.days.ago.advance(days: idx),
		expired_at: 2.days.ago.advance(days: idx),
		member_only: (idx % 3 == 0)
	)
end