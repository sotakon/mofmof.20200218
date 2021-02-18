class AddchintaiRefTostations < ActiveRecord::Migration[5.2]
  def change
       add_reference :stations, :chintai, foreign_key: true
  end
end
