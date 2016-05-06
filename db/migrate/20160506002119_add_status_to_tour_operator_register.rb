class AddStatusToTourOperatorRegister < ActiveRecord::Migration
  def change
    add_column :tour_operator_registers, :status, :integer, default: '0'
  end
end
