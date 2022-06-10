class Match < ApplicationRecord
    belongs_to :home_team, class_name: 'Team', foreign_key: 'home_id'
    belongs_to :visitor_team, class_name: 'Team', foreign_key: 'vis_id'

    has_many :users, through: :bets

    enum status_enum: [:scheduled, :started, :finished, :rescheduled]

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
        home = Team.find(home_team.id).name
        vis = Team.find(visitor_team.id).name
        return home, vis #"#{home} - #{vis}"
    end

    def teams_not_equal
        errors.add(:home_id, "Same home and away team") unless home_id != vis_id
    end
end
