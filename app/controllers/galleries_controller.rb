class GalleriesController < ApplicationController

  before_filter :verify_config
  
  
  caches_page :index, :show
  
  def index
    require "ruby-debug"
    #debugger
    @galleries = Gallery.paginate_by_status_and_parent_id true, nil,
      :include => 'pictures', 
      :page => params[:page],
      :per_page => this_webapp.galleries_pagination

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @galleries }
    end
  end

  def show
    @gallery = Gallery.find_by_permalink(params[:id]) 
    raise ActiveRecord::RecordNotFound if @gallery.nil?
    unless  @gallery.status
      redirect_to galleries_url
    else
      @pictures = Picture.paginate_by_gallery_id_and_status(@gallery.id, true,
                                              :include => 'gallery',
                                              :page => params[:page],
                                              :per_page => this_webapp.pictures_pagination)
      respond_to do |format|
        format.html 
        format.xml  { render :xml => @gallery }
      end
    end
  rescue ActiveRecord::RecordNotFound
    render :status => 404
  end

private

  def verify_config
    if User.count.zero?
      redirect_to admin_signup_url
    else
      true
    end
  end

end
