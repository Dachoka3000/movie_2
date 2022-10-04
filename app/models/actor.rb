class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies , through: :roles

    def total_salary
        total = 0
        self.roles.each do |role|
            total += role.salary
        end
        total
    end

    def blockbusters
        self.movies.filter do |movie|
            movie.box_office_earnings > 50000000
        end
    end
    
end