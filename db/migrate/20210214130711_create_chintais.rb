class CreateChintais < ActiveRecord::Migration[5.2]
  def change
    create_table :chintais do |t|
      t.string "name"
      t.integer "rent"
      t.text "adress"
      t.integer "age"
      t.text "remark"
    end
  end
end
