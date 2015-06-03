class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :text
      t.references :feature, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
