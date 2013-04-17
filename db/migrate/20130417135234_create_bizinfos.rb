class CreateBizinfos < ActiveRecord::Migration
  def change
    create_table :bizinfo do |t|
      t.string :bizid, limit: 32
      t.string :title
      t.text :desc
      t.string :account, limit: 128
      t.string :owner, limit: 50
      t.float :boost, default: 1
    end
  end
end
