class User < ApplicationRecord
  # has_and_belongs_to_many :recipes


  def self.most_active
    self.find(UserRecipe.most_popular_user_id)
  end
end
