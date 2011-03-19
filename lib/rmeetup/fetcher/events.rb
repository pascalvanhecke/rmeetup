module RMeetup
  module Fetcher
    class Events < Base
      def initialize
        @type = :"2/events"
      end
      
      # Turn the result hash into a Event Class
      def format_result(result)
        RMeetup::Type::Event.new(result)
      end
    end
  end
end