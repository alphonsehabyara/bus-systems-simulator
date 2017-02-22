class DropDestinationsTable < ActiveRecord::Migration[5.0]
  def up
     drop_table :destinations
   end

   def down
     raise ActiveRecord::IrreversibleMigration
   end
end
