class CreateTourOperatorRegisters < ActiveRecord::Migration
  def change
    create_table :tour_operator_registers do |t|
      t.string :contact_name
      t.integer :role_contact
      t.string :email
      t.string :company_name_en
      t.string :company_name_local
      t.references :business_type, index: true, foreign_key: true
      t.string :main_phone_no
      t.string :company_website
      t.string :license_number
      t.string :license_attachment

      t.timestamps null: false
    end
  end
end
