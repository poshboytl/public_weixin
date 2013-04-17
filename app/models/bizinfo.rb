# == Schema Information
#
# Table name: bizinfo
#
#  bizid   :string(32)       not null, primary key
#  title   :string(255)      not null
#  desc    :text             default(""), not null
#  account :string(128)      not null
#  owner   :string(50)       not null
#  boost   :float            default(1.0), not null
#

class Bizinfo < ActiveRecord::Base
  set_table_name "bizinfo"

  has_one :status, class_name: 'Bizstatus', primary_key: 'bizid', foreign_key: 'bizid'
  has_many :messages, primary_key: 'bizid', foreign_key: 'bizid'
end
