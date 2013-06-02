
class Main < ActiveRecord::Base
def new
    @album = LastFM::Album.get_info(:artist => "Red Hot Chili Peppers", :album => "Mother's Milk")
end

def index
	@album = LastFM::Album.get_info(:artist => "Red Hot Chili Peppers", :album => "Mother's Milk")
	end

end