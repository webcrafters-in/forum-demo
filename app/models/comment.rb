class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :comment, :id
  belongs_to :forem
  belongs_to :user
end
