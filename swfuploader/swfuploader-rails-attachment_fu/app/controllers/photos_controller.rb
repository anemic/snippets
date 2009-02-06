class PhotosController < ApplicationController
  # FIXME: Pass sessions through to allow cross-site forgery protection
  protect_from_forgery :except => :swfupload
  
  def index
    @photos = Photo.find_all_by_parent_id(nil)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    # Standard, one-at-a-time, upload action
    @photo = Photo.new(params[:photo])
    @photo.save!
    redirect_to photos_url
  rescue
    render :action => :new
  end

  def swfupload
    # swfupload action set in routes.rb
    @photo = Photo.new :uploaded_data => params[:Filedata]
    @photo.save!
    
    # This returns the thumbnail url for handlers.js to use to display the thumbnail
    render :text => @photo.public_filename(:thumb)
  rescue
    render :text => "Error"
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url
  end
end
