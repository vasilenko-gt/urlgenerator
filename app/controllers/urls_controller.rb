class UrlsController < ApplicationController

  before_action :find_url, only: [:show, :short]

  def index
    @url = Url.new
  end

  def show
    redirect_to @url.unique_url
  end

  def create
    @url = Url.new(url_params)

    if params[:desire_url].present?
      @url.desire
    end

    @url.unique

    if @url.new_url?

      if @url.save
        redirect_to short_path(@url.short_url)
      else
        flash[:error] = "Check the error below:"
        render 'index'
      end

    else
      flash[:notice] = "A short link for this URL is already in our database"
      redirect_to short_path(@url.find_duplicate.short_url)
    end

  end

  private

  def find_url
    @url = Url.find_by_short_url(params[:short_url])
  end

  def url_params
    params.require(:url).permit(:original_url, :user_id, :desire_url)
  end

end