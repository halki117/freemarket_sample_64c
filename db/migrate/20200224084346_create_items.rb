class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :item_name,          null: false
      t.integer    :price,              null: false
      t.text       :discription,        null: false
      t.references :user,               null: false, foreign_key: true
      t.references :brand,              foreign_key: true
      t.integer    :size,               null: false
      t.integer    :status_id,          null: false
      t.integer    :delivery_charge_id, null: false
      t.integer    :area_id,            null: false
      t.integer    :shipping_date_id,   null: false
      t.integer    :shipping_method_id, null: false
      t.timestamps
    end
  end
end
