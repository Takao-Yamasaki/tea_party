class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :booking_users, through: :bookings, source: :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :reviews, dependent: :destroy

  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 30 }
  validates :fee, presence: true, length: { maximum: 10 }
  validates :prefecture, presence: true, length: { maximum: 10 }
  validates :region, presence: true, length: { maximum: 10 }
  validates :content, presence: true, length: { maximum: 100 }
  validates :start_datetime, presence: true
  validates :finish_datetime, presence: true
  validates :language, presence: true, length: { maximum: 10 }
  validates :address, presence: true, length: { maximum: 30 }
  validates :latitude, presence: true
  validates :longitude, presence: true

  # geocoderの適用
  # :addressを登録した際にgeocoderが緯度経度ののカラムにも自動的に値を入れてくれる
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # いいねしているか判定
  def liked_by?(user)
    likes.find_by(user_id: user.id).present?
  end

  scope :start_after, -> (datetime) {
    datetime = datetime.to_datetime
    where('start_datetime > ?', datetime)
  }

  class << self
    def ransackable_scopes(auth_object = nill)
      [:start_after]
    end
  end
end
