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
    ip = Ip::GetUserIp.new.get_ip
    url = Url.find_by_token(params[:token])
    url.visitors_count += 1

    if url.ips&.keys&.include?(ip)
      url.ips[ip] = url.ips[ip] + 1
    else
      url.ips[ip] = 1
    end

    url.save

    redirect_to token_page_path(url.token)
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
