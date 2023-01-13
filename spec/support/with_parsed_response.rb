# frozen_string_literal: true

RSpec.shared_context 'with parsed response' do
  let(:parsed_response) { JSON.parse(response.body) }
end
