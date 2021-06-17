class User < ApplicationRecord
  include SoftDeletable
  has_many :posts
end
