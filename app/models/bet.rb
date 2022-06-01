class Bet < ApplicationRecord
    belongs_to :match, foreign_key: 'match_id'
    belongs_to :user, foreign_key: 'user_id'

end
