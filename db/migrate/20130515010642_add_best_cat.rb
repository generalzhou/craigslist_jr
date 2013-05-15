class AddCatId < ActiveRecord::Migration
  def up
    add_column :posts, :OMGNSFWROFLYOLOLOLGTFO, :boolean
  end

  def down
    remove_column :posts, :OMGNSFWROFLYOLOLOLGTFO, :boolean
  end
end
