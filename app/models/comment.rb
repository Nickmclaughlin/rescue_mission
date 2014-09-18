class Comment < ActiveRecord::Base
  belongs_to :question
  validates :username, presence: true,
                    length: { minimum: 4 }
  validates :description, presence: true,
                    length: { minimum: 50 }
end
