#coding: utf-8

require "open-uni"

open("http://www.oisx.jp/") do |f|
	f.each_line{ |line| puts line}
end
