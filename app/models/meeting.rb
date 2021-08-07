class Meeting < ApplicationRecord

     # This will guarantee set_duration is called before saving it to the database
  before_save :set_duration

  #def duration_add
   # duration = (end_date - start_date).to_i
  #end

  #def duration

   #self.duration = (end_date - start_date).to_i
    
    #end
    def daily_total_duration
      # Meeting.where("start_date >= ? AND end_date < ?", Time.now.beginning_of_day, Time.now.end_of_day).sum(:duration)
       #@meeting = Meeting.where("start_date >= ?", Time.now.beginning_of_week).sum(:duration)
    #  @meeting =  Meeting.where("start_date >= ? AND end_date < ?", Time.now.beginning_of_day, Time.now.end_of_day).sum(:duration)

      Meeting.where("start_date >= ? AND end_date  < ?", Time.now.beginning_of_day, Time.now.end_of_day).sum(:duration)
      end

      def weekly_total_duration
        #Meeting.where("start_date >= ? AND end_date < ?", Time.now.beginning_of_day, Time.now.end_of_day).sum(:duration)
        Meeting.where("start_date >= ?", Time.now.beginning_of_week).sum(:duration)
      end 
      
   # def all_day
    #  Meeting.where("created_at >= ? AND created_at < ?", Time.now.beginning_of_day, Time.now.end_of_day).sum(:duration)

    #end

    def set_duration
      self.duration = (end_date - start_date).to_i
    end

end
