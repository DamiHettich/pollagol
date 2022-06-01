class Team < ApplicationRecord
    has_many :matches, class_name: 'Match'

    
end
