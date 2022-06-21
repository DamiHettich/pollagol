class Bet < ApplicationRecord
    belongs_to :match, foreign_key: 'match_id'
    belongs_to :user, foreign_key: 'user_id'

    validates :home_goals, presence: true
    validates :visitor_goals, presence: true
    validates :user_id, uniqueness: { scope: [:user_id, :match_id] }


    def pseudo_match
        home = Team.find(match.home_id).seudo
        vis = Team.find(match.vis_id).seudo
        return "#{home} - #{vis}"
    end

    def match_allows_bets?(my_match)
        start_time > Time.now
    end


    def get_user_bet(my_user, my_match)
        Bet.find_by("user_id=#{my_user.id} AND match_id=#{my_match.id}")
    end

    def guessed_winner
        my_polla = Polla.find(1)
        my_match = Match.find(match_id)
        real_result = my_match.home_goals - my_match.vis_goals
        my_result = home_goals - visitor_goals
        if real_result == 0 && my_result==0
            return my_polla.winner_points
        elsif real_result*my_result > 0
            return my_polla.winner_points
        else
            return 0
        end
    end

    def guessed_goals
        total = 0
        my_polla = Polla.find(1)
        my_match = Match.find(match_id)
        if home_goals == my_match.home_goals
            total = total + my_polla.exact_goals_points
        end
        if visitor_goals == my_match.vis_goals
            total = total + my_polla.exact_goals_points
        end
        return total
            
    end

    def calculate_score
        my_match = Match.find(match_id)
        if my_match.home_goals != nil && my_match.vis_goals != nil
            return guessed_goals + guessed_winner
        else
            return 0
        end

    end

end
