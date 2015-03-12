class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
