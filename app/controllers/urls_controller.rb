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

    response = HTTParty.get("#{@url.original_url}")

    case response.code
      when 200
        generate_short_url
      when 404
        redirect_to user_urls_path(current_user)
      else
        redirect_to user_urls_path(current_user)
    end
  end

  private

  def find_url
    @url = Url.find_by_short_url(params[:short_url])
  end

  def url_params
    params.require(:url).permit(:original_url, :short_url, :unique_url, :share_email, :desire_url, :user_id)
  end

  def generate_short_url
    @url.unique

    if @url.new_url?
      if @url.save
        redirect_to short_path(@url.short_url)
      else
        flash[:error] = "error"
        render 'index'
      end
    else
      flash[:notice] = "A short link for this URL is already in our database"
      redirect_to short_path(@url.find_duplicate_uniq.short_url)
    end
  end

end