class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :alias, uniqueness: true
      t.string :title
      t.string :office
      t.string :img_url
      t.references :dog

      t.timestamps
    end
  end
end
