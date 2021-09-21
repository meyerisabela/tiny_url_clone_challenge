class UrlsController < ApplicationController
  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to url_info_path(@url.token)
    else
      render 'pages/home'
    end
  end

  def show
    @url = Url.find_by_token(params[:token])
  end

  def redirect
    @url = Url.find_by_token(params[:token])
    redirect_to token_page_path(@url.token)
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
