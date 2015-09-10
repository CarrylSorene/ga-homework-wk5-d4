class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.column(:name, :string)
      t.column(:age, :integer)
      t.column(:occupation, :string)
      t.column(:family, :text)
      t.column(:friends, :text)
      t.column(:favourites, :text)
      t.column(:hobbies, :text)

      t.timestamps null: false
    end
  end
end
