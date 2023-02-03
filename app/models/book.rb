class Book < ApplicationRecord
    
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  
  def bookmarked_by?(user)
    bookmarks.where(user_id: user).exists?
  end
    
end
