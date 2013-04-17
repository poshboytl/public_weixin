class CreateBizstatuses < ActiveRecord::Migration
  def change
    create_table :bizstatus do |t|
      t.string :bizid
      t.bigint :last_success_msgid
      t.datetime :updated_at
    end
  end
end
