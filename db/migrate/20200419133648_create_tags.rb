class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string      :title, null: false, limit: 255
      t.references  :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
