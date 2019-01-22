class CreateKudos < ActiveRecord::Migration[5.2]
  def change
    create_table :kudos do |t|
      t.string :message
      t.references :sender
      t.references :receiver

      t.timestamps

      add_foreign_key :kudos, :users, column: :sender_id, primary_key: :id
      add_foreign_key :kudos, :users, column: :receiver_id, primary_key: :id

    end
  end
end
