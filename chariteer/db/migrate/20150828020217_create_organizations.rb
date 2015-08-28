class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :mission_statement
      t.string :contact_email
      t.string :website
      t.boolean :non_profit

      t.timestamps null: false
    end
  end
end
