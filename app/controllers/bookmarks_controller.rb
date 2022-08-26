class BookmarksController < ApplicationController
  def new
    # We need @restaurant in our `simple_form_for`
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
