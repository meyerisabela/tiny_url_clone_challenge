module Token
  class TokenGenerator
    def initialize(original_url)
      @original_url = original_url
    end

    def generate_token
      Base64.encode64(@original_url)[0..7]
    end
  end
end
