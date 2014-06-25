class PagesController < ApplicationController

  def about_us
  end

  def photos
    @current_page = page
    @photos = ChunkedPhotos.for_page(@current_page)
    @total_pages = ChunkedPhotos.total_pages
  end

  def contact
  end

  private
  def page
    page = params[:page].to_i
    page.zero? ? 1 : page
  end

end
