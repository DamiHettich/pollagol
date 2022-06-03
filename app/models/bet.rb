class Bet < ApplicationRecord
    belongs_to :match, foreign_key: 'match_id'
    belongs_to :user, foreign_key: 'user_id'

    def pseudo_match
        home = Team.find(match.home_id).seudo
        vis = Team.find(match.vis_id).seudo
        return "#{home} - #{vis}"
    end
end
