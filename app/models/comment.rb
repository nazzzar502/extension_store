class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :product, optional: true

  validates :label, :body, presence: true
  validates :label, length: {minimum:3}
  validates :body, length: {minimum:10}

  def ensure_if_user_original(comment, current_user)
    if comment.user_id != current_user.id
      raise "Can't delete comment that is not belong to user"
    end
  end
end
