module RMeetup
  module Fetcher
    class EventSingle < Base
      def initialize(event_id)
        @type = :"2/event/#{event_id}"
      end
      
      # Turn the result hash into a EventSingle Class
      def format_result(result)
        RMeetup::Type::EventSingle.new(result)
      end
    end
  end
end