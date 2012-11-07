class AddThemeRefToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.references :theme
    end
    add_index :posts, :theme_id
  end
end
