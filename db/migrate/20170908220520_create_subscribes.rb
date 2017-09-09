class CreateSubscribes < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
