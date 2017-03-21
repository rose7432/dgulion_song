class AddStatusToAtt < ActiveRecord::Migration
  def change
    add_column :atts, :status, :boolean, :default => "false"
  end
end
