# == Schema Information
#
# Table name: bizstatus
#
#  bizid              :string(32)       not null, primary key
#  last_success_msgid :integer          default(10000000), not null
#  updated_at         :timestamp        not null
#

class Bizstatus < ActiveRecord::Base
  set_table_name :bizstatus

  belongs_to :info, class_name: 'Bizinfo', primary_key: 'bizid', foreign_key: 'bizid'
end
