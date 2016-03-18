class AddTodoToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :todo, :integer
  end

  def down
    remove_column :projects, :todo, :integer
  end
end
