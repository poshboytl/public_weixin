class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string  :bizid
      t.integer :msgid, limit: 20
      t.integer :count

      t.timestamps
    end
  end
end
