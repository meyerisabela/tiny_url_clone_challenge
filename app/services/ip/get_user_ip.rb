module Ip
  class GetUserIp
    def get_ip
      Socket::getaddrinfo(Socket.gethostname, 'echo', Socket::AF_INET)[0][3]
    end
  end
end
