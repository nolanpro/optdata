require 'google'
require 'symbols'

# require 'chain_getter'; ChainGetter.call
class ChainGetter
  def self.call
    SYMBOLS.each do |symbol|
      puts "Getting chain for sym: #{symbol}"
      data = Google.new(q: symbol).chain
      Chain.create!(symbol: symbol, data: data)
      sleep 5
    end
  end
end
