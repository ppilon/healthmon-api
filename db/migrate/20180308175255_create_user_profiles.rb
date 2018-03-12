class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :blood_type
      t.string :fitzpatrick_skin_type
      t.string :birth_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
