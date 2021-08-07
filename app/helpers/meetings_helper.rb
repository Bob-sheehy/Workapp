module MeetingsHelper

    def duration_display(meeting)

       duration = ActiveSupport::Duration.build(meeting.duration).parts 
        
        format('%02d hours and %02d minutes', (duration[:hours]||0), (duration[:minutes]||0), (duration[:seconds]||0))
        
        end
        
end
