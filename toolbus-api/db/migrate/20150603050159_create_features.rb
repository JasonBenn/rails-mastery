class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
