class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content, 
      t.references :message_user, foregin_key: :true
      t.references :message_room, foregin_key: :true
      t.timestamps
    end
  end
end
