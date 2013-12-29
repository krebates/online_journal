class ChangeColumnName < ActiveRecord::Migration
  def up
    rename_column :categories, :type, :name
  end

  def down
    rename_column :categories, :name, :type
  end
end
