class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname, comment: '昵称'
      t.string :encrypted_password
      t.string :phone, comment: '手机', null: false

      t.timestamps
    end
  end
end
