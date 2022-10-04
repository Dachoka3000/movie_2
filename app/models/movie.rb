class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor:,character_name:,salary:)
        new_role = Role.create(salary:salary, character_name:character_name,actor_id:actor.id,movie_id:self.id)
    end

    def all_credits
        self.roles.map do |role|
            "#{role.character_name}:Played by #{role.actor.name}"
        end
    end

    def fire_actor(actor:)
    end
end