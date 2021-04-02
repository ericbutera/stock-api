# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Stocks API', type: :request do
  let!(:stocks) { create_list :stock, 10 }
  let(:stock_id) { stocks.first.id }

  describe 'GET /stocks' do
    before { get '/stocks' }

    it 'returns stocks' do
      # `json` is a custom helper to parse json responses
      expect(json).not_to be_empty
      expect(json.size).to eq 10
    end

    it 'returns status code 200' do
      expect(response).to have_http_status 200
    end
  end

  describe 'GET /stocks/:id' do
    before { get "/stocks/#{stock_id}" }

    context 'when the record exists' do
      it 'returns the stock' do
        expect(json).not_to be_empty
        expect(json['id']).to eq stock_id
      end

      it 'returns status code 200' do
        expect(response).to have_http_status 200
      end
    end

    context 'when the record does not exist' do
      let(:stock_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status 404
      end
    end
  end
end
