class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :animals, :avatar_file_name
    remove_column :animals, :avatar_content_type
    remove_column :animals, :avatar_file_size
    remove_column :animals, :avatar_updated_at
  end
end
