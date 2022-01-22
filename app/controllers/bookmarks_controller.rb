class BookmarksController < ApplicationController
  # def new
  # end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmarks = Bookmark.where(list_id: @list.id)
    @movies = []
    @bookmarks.each do |bookmark|
      @movies << Movie.find(bookmark.movie_id)
    end
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end

    # redirect_to list_path(:id)
    # else
    #   render "lists/show"
    # end
    # redirect_to list_path(:list_id)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = List.find(@bookmark.list_id)
    @bookmark.destroy
    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
