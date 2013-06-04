class MainController < ApplicationController
  def index
  end

  def listalbums()
    param_1 = params[:album] 
    if param_1 == nil
       param_1=  "nada"	     
    end
    #token = params[:token]
    #@album = LastFM::Album.search(:album => "Mother's Milk")  
     @album = LastFM::Album.search(:album =>  param_1)    
     #redirect_to listalbum_path and return if !token || token == ""
     respond_to do |format|
       format.html
       format.xml  {render :xml => @album.to_xml(:root => :album)}
     end
    
  end

def listartists()
    param_1 = params[:artist] 
    if param_1 == nil
       param_1=  "The Rolling Stones"      
    end
     @artist = LastFM::Artist.get_info(:artist =>  param_1)    
     respond_to do |format|
       format.html
       format.xml  {render :xml => @artist.to_xml(:root => :artist)}
     end
    
  end

end
