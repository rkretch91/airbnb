require 'open-uri'

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
  before_action :set_flats

  def index
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats = JSON.parse(open(url).read)
  end

  def show
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats = JSON.parse(open(url).read)
    @flat = @flats.find { |flat| params[:id].to_i == flat['id'] }
  end

  private

  def set_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end

