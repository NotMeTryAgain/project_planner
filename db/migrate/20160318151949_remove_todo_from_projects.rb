class RemoveTodoFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :todo, :integer
  end
end
