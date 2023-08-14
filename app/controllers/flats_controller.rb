require 'open-uri'

class FlatsController < ApplicationController
  URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
  before_action :set_flats

  def index
    # raise
  end

  def show
    # 1. load all the flats from the static DB
    # 2. retrieve the id from the params
    # 3. find the flat that matchs the id in the params
    id = params[:id].to_i
    @flat = @flats.find { |flat| flat['id'] == id }
    # raise
  end

  private

  def set_flats
    @flats = JSON.parse(URI.open(URL).read)
  end
end
