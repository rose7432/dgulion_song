class User < ActiveRecord::Base
    has_many :atts
    has_many :sches, through: :atts

    def att_save
        if self.save
            Sch.all.each do |s|
                Att.create(user_id: self.id, sch_id: s.id, status: false)
            end
        else
        end
    end    
end
