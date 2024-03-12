class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :User
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
