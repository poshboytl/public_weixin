class Vote < ActiveRecord::Base
  def self.find_or_create_from_message(message)
    Vote.find_or_create_by_bizid_and_msgid(message.bizid, message.msgid)
  end

  def incr!
    increment(:count)
  end
end
