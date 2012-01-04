class AlertsController < ApplicationController
  respond_to :html

  def index
    @alerts = Alert.all
    respond_with(@alerts)
  end
end