require 'execjs'

class Chain < ActiveRecord::Base
  def parsed
    ExecJS.eval(data)
  end
end
