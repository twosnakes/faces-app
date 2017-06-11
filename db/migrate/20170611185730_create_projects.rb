class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.boolean :completed
      t.boolean :current
      t.string :face
      t.string :face_color
      t.string :eyes
      t.string :nose
      t.string :mouth
      t.string :title

      t.timestamps
    end
  end
end
