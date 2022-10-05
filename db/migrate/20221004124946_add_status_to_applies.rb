class AddStatusToApplies < ActiveRecord::Migration[7.0]
  def change
    add_column :applies, :status, :integer, default: 0, index: true
  end
end
