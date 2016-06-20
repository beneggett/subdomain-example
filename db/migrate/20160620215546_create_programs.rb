class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :subdomain
      t.string :domain_name
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_index :programs, :subdomain
    add_index :programs, :domain_name
  end
end
