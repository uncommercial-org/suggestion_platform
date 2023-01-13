# frozen_string_literal: true

RSpec.describe HealthController, type: :controller do
  describe 'GET #show' do
    subject(:show) { process :show }

    it_behaves_like 'HTTP status ok'
  end
end
