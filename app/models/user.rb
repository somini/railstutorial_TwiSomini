class User < ActiveRecord::Base

  has_many :brainfarts

  validates :nick,
    presence: true
  validates :mail,
    presence: true,
    format: /[a-zA-Z0-9]+@[a-zA-Z0-9]+[.][a-zA-Z0-9]+/

end
