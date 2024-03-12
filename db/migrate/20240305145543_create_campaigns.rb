class CreateCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :picture
      t.string :content
      t.integer :total
      t.integer :target
      t.date :close_at
      t.string :time

      t.timestamps
    end
  end
end
