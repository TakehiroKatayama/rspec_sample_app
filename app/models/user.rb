class User < ApplicationRecord
  def disp_name
    "#{name}さん"
  end
end
