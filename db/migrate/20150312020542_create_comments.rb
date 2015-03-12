class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :post_id
      t.datetime :created_at
      t.datetime :updated_at
    end

    change_table :posts do |t|
      t.integer :comment_id
    end

    change_table :users do |t|
      t.integer :comment_id
    end
  end
end
