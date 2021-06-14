class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations
  
  mount_uploader :room_image, RoomImageUploader
  
  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :address, presence: true
  
  def self.search(address,introduction)
    where(["address like? OR introduction like?", "%#{address}%", "%#{introduction}%"])
  end
  
end
