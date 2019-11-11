class AddDateAvailabilityToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :date_availability, :datetime
  end
end
