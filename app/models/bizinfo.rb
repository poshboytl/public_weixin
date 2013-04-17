class Bizinfo < ActiveRecord::Base
  set_table_name "bizinfo"

  has_one :status, class_name: 'Bizstatus', primary_key: 'bizid', foreign_key: 'bizid'
  has_many :messages, primary_key: 'bizid', foreign_key: 'bizid'
end
