class Bizstatus < ActiveRecord::Base
  set_table_name :bizstatus

  belongs_to :info, class_name: 'Bizinfo', primary_key: 'bizid', foreign_key: 'bizid'
end
