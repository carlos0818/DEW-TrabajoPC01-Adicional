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

<<<<<<< HEAD
def listartists()
    param_1 = params[:artist] 
    if param_1 == nil
       param_1=  "The Rolling Stones"      
    end
     @artist = LastFM::Artist.get_info(:artist =>  param_1)    
     respond_to do |format|
       format.html
       format.xml  {render :xml => @artist.to_xml(:root => :artist)}
=======
  def listTracks()
    param_1 = params[:track] 
    if param_1 == nil
       param_1=  "nada"      
    end
    #token = params[:token]
    #@album = LastFM::Album.search(:album => "Mother's Milk")  
     @track = LastFM::Track.search(:track =>  param_1)    
     #redirect_to listalbum_path and return if !token || token == ""
     respond_to do |format|
       format.html
       format.xml  {render :xml => @track.to_xml(:root => :track)}
>>>>>>> 4de87d22c70c8b0a9ab0bcefad1af370b81ab674
     end
    
  end

end
