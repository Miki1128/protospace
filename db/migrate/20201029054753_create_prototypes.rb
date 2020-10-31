class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.timestamps
      t.text       :catch_copy, null:false
      t.text       :concept,    null:false
      t.references :user,       foreign_key: true
      t.string     :title,      null:false
    end
  end
end
