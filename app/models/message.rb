# == Schema Information
#
# Table name: message
#
#  id             :integer          not null, primary key
#  bizid          :string(32)       not null
#  msgid          :integer          not null
#  url            :string(255)      not null
#  title          :string(255)      not null
#  content        :text(16777215)   default(""), not null
#  updated_at     :timestamp        not null
#  images         :text             default(""), not null
#  source_url     :string(255)      not null
#  repeat_message :integer          default(0), not null
#  message_hash   :string(32)       not null
#

class Message < ActiveRecord::Base
  set_table_name "message"
  paginates_per 60

  belongs_to :info, class_name: 'Bizinfo', primary_key: 'bizid', foreign_key: 'bizid'

  scope :recent, order('updated_at DESC')

  def self.from_param(bizid, msgid)
    where(bizid: bizid, msgid: msgid).first
  end
end
