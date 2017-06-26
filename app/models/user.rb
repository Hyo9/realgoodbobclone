class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :post2s
  has_many :post3s
  has_many :post4s
  
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post4
  
  
  def is_like?(post)
  Like.find_by(user_id: self.id, post4_id: post.id).present?
  end
  
end
