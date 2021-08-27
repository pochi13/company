class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string   :reason,   null: false
      t.string   :title,   null: false

      t.timestamps
    end
  end
end
