# frozen_string_literal: true

RSpec.describe Heartcheck::Checks::Newrelic do
  describe '#validate' do
    it 'does not record an error when everything is fine' do
      allow(NewRelic::Agent).to receive(:increment_metric)

      new_relic = described_class.new

      expect { new_relic.validate }
        .not_to change { new_relic.instance_variable_get(:@errors) }
        .from([])
    end

    it 'record error when exception is raised' do
      allow(NewRelic::Agent).to receive(:increment_metric)
        .and_raise(StandardError)

      new_relic = described_class.new

      expect { new_relic.validate }
        .to change { new_relic.instance_variable_get(:@errors) }
        .from([])
        .to(['could not report to New Relic server.', 'StandardError'])
    end
  end
end
