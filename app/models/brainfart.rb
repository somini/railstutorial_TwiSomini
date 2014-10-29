class Brainfart < ActiveRecord::Base
  belongs_to :user
  validates :content,
    length: { minimum: 10, maximum:404 },
    presence: true # Exists, and it's not empty
end
