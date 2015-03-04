class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
