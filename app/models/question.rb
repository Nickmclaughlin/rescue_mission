class Question < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 2 }
  validates :description, presence: true

end
