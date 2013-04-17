class CreateMessages < ActiveRecord::Migration
  def change
    create_table :message do |t|
      t.string :bizid, limit: 32
      t.bigint :msgid,
      t.string :url
      t.string :title
      t.text :content
      t.text :images
      t.string :source_url
      t.int :repeat_message, limit: 4
      t.string :message_hash
      t.datetime :updated_at
    end
  end
end
