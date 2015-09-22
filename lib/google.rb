# require 'google'; Google.new.chain
class Google
  include HTTParty
  base_uri 'www.google.com'
  format :plain

  # DEFAULT_QUERY = {
  #   cid: 24873,
  #   expd: 15,
  #   expm: 1,
  #   expy: 2016,
  #   output: :json
  # }

  DEFAULT_QUERY = {
    q: 'NYSE:MSI',
    expd: 20,
    expm: 11,
    expy: 2015,
    output: :json
  }

  def initialize(options = {})
    @query = DEFAULT_QUERY.merge(options)
    @path = '/finance/option_chain'
  end

  def chain
    response = self.class.get(@path, query: @query)
    response.body
  end
end
