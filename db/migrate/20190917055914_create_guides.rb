class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
