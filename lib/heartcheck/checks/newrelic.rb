module Heartcheck
  module Checks
    class Newrelic < Base
      def validate
        NewRelic::Agent.notify_error('Heartcheck monitoring', :expected)
      rescue => e
        append_error('could not report to New Relic server.')
        append_error(e.message)
      end

      private

      def custom_error(*messages)
        @errors.push(*messages)
      end
    end
  end
end
