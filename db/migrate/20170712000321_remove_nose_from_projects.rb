class RemoveNoseFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :nose, :string
    remove_column :projects, :face_color, :string
  end
end
