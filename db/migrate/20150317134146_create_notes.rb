class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :status
      t.text :message
      t.belongs_to :team
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
