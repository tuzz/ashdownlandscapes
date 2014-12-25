module ChunkedPhotos
  PHOTOS_PER_PAGE = 8
  PHOTOS_PER_ROW  = 4
  PHOTO_COUNT     = 36

  def self.for_page(page)
    first = (page - 1) * PHOTOS_PER_PAGE + 1
    last = first + PHOTOS_PER_PAGE - 1
    last = last > PHOTO_COUNT ? PHOTO_COUNT : last

    (first..last).each_slice(PHOTOS_PER_ROW)
  end

  def self.total_pages
    (PHOTO_COUNT.to_f / PHOTOS_PER_PAGE).ceil
  end
end
