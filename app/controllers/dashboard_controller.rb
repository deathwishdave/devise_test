class DashboardController < ApplicationController
  before_filter :authenticate_user!

  # GET /dashboards
  # GET /dashboards.json
  def index
  end
end
