class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.belongs_to :team
      t.timestamps null: false
    end
  end
end
