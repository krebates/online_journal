class ChangeColumn < ActiveRecord::Migration
  def up
    rename_column :entries, :entry, :post
  end

  def down
    rename_column :entries, :post, :entry
  end

end
