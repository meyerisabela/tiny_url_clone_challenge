class Url < ApplicationRecord
  before_save :token_generator

  validates_presence_of :original_url

  serialize :ips

  def token_generator
    self.token = Token::TokenGenerator.new(original_url).generate_token
  end
end
