class CreateBizstatuses < ActiveRecord::Migration
  def change
    create_table :bizstatus do |t|
      t.string   :bizid
      t.integer  :last_success_msgid, limit: 20
      t.datetime :updated_at
    end
  end
end
