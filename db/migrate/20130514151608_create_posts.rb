class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer  :category_id
      t.string   :title
      t.string   :description
      t.string   :location
      t.decimal  :price
      t.string   :edit_key
      t.string   :reply_to
    end
  end
end
