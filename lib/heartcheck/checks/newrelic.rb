# frozen_string_literal: true

module Heartcheck
  module Checks
    class Newrelic < Base
      def validate
        NewRelic::Agent.increment_metric('Custom/NewRelicMonitoring')
      rescue StandardError => exception
        append_error('could not report to New Relic server.')
        append_error(exception.message)
      end

      private

      def custom_error(*messages)
        @errors.push(*messages)
      end
    end
  end
end
