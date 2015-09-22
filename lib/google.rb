# require 'google'; Google.new.chain
class Google
  include HTTParty
  base_uri 'www.google.com'
  format :plain

  DEFAULT_QUERY = {
    cid: 24873,
    expd: 15,
    expm: 1,
    expy: 2016,
    output: :json
  }

  def initialize
    @query = DEFAULT_QUERY
    @path = '/finance/option_chain'
  end

  def chain
    response = self.class.get(@path, query: @query)
    JSON.parse(response.body)
  end
end
