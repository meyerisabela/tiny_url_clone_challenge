class PagesController < ApplicationController
  def home
    @url = Url.new(url_params)
  end

  private

  def url_params
    params.permit(:original_url)
  end
end
