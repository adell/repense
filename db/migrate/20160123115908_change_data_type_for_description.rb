class ChangeDataTypeForDescription < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.change :description, :text
    end    
  end
end
