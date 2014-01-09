class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :title
      t.text :desc
      t.string :img

      t.timestamps
    end
  end
end
