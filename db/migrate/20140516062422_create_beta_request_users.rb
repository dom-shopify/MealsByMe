class CreateBetaRequestUsers < ActiveRecord::Migration
  def change
    create_table :beta_request_users do |t|
      t.string :zip, :null => false
      t.string :email
      t.string :delivery_type, :null => false
      t.timestamp :signup_date

      t.timestamps
    end
  end
end
