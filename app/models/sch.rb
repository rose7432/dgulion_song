class Sch < ActiveRecord::Base
    has_many :atts
    has_many :users, through: :atts

    def att_save
        if self.save
            User.all.each do |u|
                Att.create(user_id: u.id, sch_id: self.id, status: false)
            end
        else
        end
    end
end
