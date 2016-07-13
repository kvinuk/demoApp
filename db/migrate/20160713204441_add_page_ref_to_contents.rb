class AddPageRefToContents < ActiveRecord::Migration
  def change
    add_reference :contents, :page, index: true, foreign_key: true
  end
end
