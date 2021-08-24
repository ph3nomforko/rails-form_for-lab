class SchoolClass < ActiveRecord::Base
    def display_info
        self.title + " " + self.room_number.to_s
    end
end