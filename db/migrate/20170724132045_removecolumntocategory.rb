class Removecolumntocategory < ActiveRecord::Migration[5.1]
  def change
    remove_reference(:categories, :client, index: true, foreign_key: true)
  end
end
