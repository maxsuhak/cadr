class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
