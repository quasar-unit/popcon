class CreatePops < ActiveRecord::Migration
  def change
    create_table :pops do |t|
      t.string :owner
      t.text :body
      t.references :subPops, index: true
      t.references :prePops, index: true
      t.references :postPops, index: true

      t.timestamps null: false
    end
    add_foreign_key :pops, :subPops
    add_foreign_key :pops, :prePops
    add_foreign_key :pops, :postPops
  end
end
