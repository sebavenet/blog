class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email
      t.boolean :is_admin
      t.boolean :is_author

      t.timestamps
    end
  end
end
