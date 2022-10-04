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
    
end