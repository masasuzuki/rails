class Entry < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :author, class_name: "Member", foreign_key: "member_id"

  STATUS_VALUES = %w(draft member_only public)

  validates :title, presence: true, length: {maximum: 200}
  validates :body, :posted_at, presence: true
  validates :status, inclusion: {in: STATUS_VALUES}
  attr_accessible :title, :body, :posted_at, :status
end
