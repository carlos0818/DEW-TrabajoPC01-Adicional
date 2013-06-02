class MainController < ApplicationController
  def index
     @album =  LastFM::Album.get_info(:artist => "Red Hot Chili Peppers", :album => "Mother's Milk")
  end

  end
