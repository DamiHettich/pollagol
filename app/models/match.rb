class Match < ApplicationRecord
    belongs_to :home_team, class_name: 'Team', foreign_key: 'home_id'
    belongs_to :visitor_team, class_name: 'Team', foreign_key: 'vis_id'
    belongs_to :pollas, class_name:'Polla', foreign_key:'polla_id'

    has_many :users, through: :bets
    has_many :bets
    

    enum status_enum: [:scheduled, :started, :finished, :rescheduled]

    scope :reversed, -> { order(:start_time).reverse_order }

    validate :teams_not_equal

    def short_name
        home = Team.find(home_team.id).seudo
        vis = Team.find(visitor_team.id).seudo
        return home, vis #"#{home} - #{vis}"
    end

    def dynamic_title_str
        home = Team.find(home_team.id).name
        vis = Team.find(visitor_team.id).name
        if home_goals
            return "#{home} (#{home_goals}) - #{vis} (#{vis_goals})"
        else
            return "#{home} - #{vis}"
        end
    end

    def dropdown_data
        home = Team.find(home_team.id).seudo
        vis = Team.find(visitor_team.id).seudo
        start = start_time.to_formatted_s(:short)
        return "#{home} - #{vis}: #{start}"
    end

    def home_away_names
        home = Team.find(home_team.id).name.capitalize
        vis = Team.find(visitor_team.id).name.capitalize
        return home, vis #"#{home} - #{vis}"
    end

    def allows_bets?
        start_time > Time.now
    end

    def already_has_bet_by_user?(my_user)
        Bet.where("user_id=#{my_user.id} AND match_id=#{id}").size>0
    end

    def get_user_bet(my_user)
        return Bet.find_by("user_id=#{my_user.id} AND match_id=#{id}")
    end

    def guessed_winner_points(my_user)
        bet = get_user_bet(my_user)
        real_result = home_goals - vis_goals
        my_result = bet.home_goals - bet.visitor_goals
        if real_result == 0 && my_result==0
            return Polla.find(1).winner_points
        elsif real_result*my_result > 0
            return Polla.find(1).winner_points
        else
            return 0
        end
    end

    def guessed_goals_points(my_user)
        total = 0
        bet = get_user_bet(my_user)
        if bet.home_goals == home_goals
            total = total + Polla.find(1).exact_goals_points
        end
        if bet.visitor_goals == vis_goals
            total = total + Polla.find(1).exact_goals_points
        end
        return total
            
    end

    def teams_not_equal
        errors.add(:home_id, "same as away team") unless home_id != vis_id
    end
end
