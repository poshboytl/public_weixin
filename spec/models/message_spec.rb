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

require 'spec_helper'

describe Message do
  pending "add some examples to (or delete) #{__FILE__}"
end
