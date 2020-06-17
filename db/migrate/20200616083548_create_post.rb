class CreatePost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.references :comment, null: true, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
    end
  end
end
