class Vote < ActiveRecord::Base
  belongs_to :story
   def self.total_on(date)
    where("date(created_at) = ?", date).count
     # where("date(created_at) = ?", date).sum(:total_votes)  
  end
end
