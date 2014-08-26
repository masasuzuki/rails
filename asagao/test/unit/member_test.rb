# coding: utf-8
require 'test_helper'

class MemberTest < ActiveSupport::TestCase
    #test "the truth" do
    #  a = 1
    #  assert a == 2, "a is not 2"
    #end
    test "factory girl" do
   	  member = Factory(:member)
   	  assert_equal "Yamada Taro", member.full_name
    end
    test "authenticate" do
    	member = Factory( :member, name: "taro",
    							password: "happy", password_confirmation: "happy" )
    	assert_nil Member.authenticate( "taro", "lucky" )
    	assert_equal member, Member.authenticate("taro", "happy")
    end
end
