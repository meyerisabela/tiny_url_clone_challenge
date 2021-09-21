class UrlsController < ApplicationController
  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
