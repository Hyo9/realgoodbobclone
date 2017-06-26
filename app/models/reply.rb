class Reply < ActiveRecord::Base
  belongs_to :post4
  mount_uploader :image, ReplyImageUploader
end
