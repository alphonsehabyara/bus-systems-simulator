class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :departure
      t.string :arrival

      t.timestamps
    end
  end
end
