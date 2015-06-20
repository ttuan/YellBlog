class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry
  default_scope -> { order(created_at: :esc) }
  validates :content, presence: true, length: { maximum: 1000}
  validates :user_id, presence: true
end
