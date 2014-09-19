class Comment < ActiveRecord::Base
  belongs_to :question
  validates :username, presence: true,
                      length: {minimum: 1}
  validates :description, presence: true

end
