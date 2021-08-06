class Meeting < ApplicationRecord

     # This will guarantee set_duration is called before saving it to the database
  before_save :set_duration

  #def duration_add
   # duration = (end_date - start_date).to_i
  #end

  #def duration

   #duration = (end_date - start_date).to_i
    
    #end
    

    def set_duration
      duration = (end_date - start_date).to_i
    end

end
