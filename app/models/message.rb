class Message < ActiveRecord::Base
  set_table_name "message"

  belongs_to :info, class_name: 'Bizinfo', primary_key: 'bizid', foreign_key: 'bizid'

  def self.from_param(bizid, msgid)
    where(bizid: bizid, msgid: msgid).first
  end
end
