class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry
  default_scope -> { order(created_at: :desc)}
  validates :content, presence: true, length: { maximum: 1000}
  validates :user_id, presence: true
  validates :entry_id, presence: true
end
