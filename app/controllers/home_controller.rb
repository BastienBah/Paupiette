class HomeController < ApplicationController
  def index
  end

  def participation
    @participations = Participation.all
  end
end
