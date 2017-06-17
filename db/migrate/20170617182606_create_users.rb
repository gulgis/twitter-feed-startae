class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.text :email

      t.timestamps
    end
    add_index :users, :username, :uniqueness => true
  end
end
