class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :page
      t.string :section
      t.string :text

      t.timestamps null: false
    end
  end
end
