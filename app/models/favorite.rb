class Favorite < ApplicationRecord

    validates :title, uniqueness: { 
    scope: [:description, :link_to_story],
    message: 'can only favorite an item once'
  }
  
end
