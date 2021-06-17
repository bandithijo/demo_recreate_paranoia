class Post < ApplicationRecord
  include SoftDeletable
  belongs_to :user
end
