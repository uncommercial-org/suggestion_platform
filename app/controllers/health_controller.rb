# frozen_string_literal: true

class HealthController < ApplicationController
  def show
    render json: { code: 200, status: :ok }
  end
end
