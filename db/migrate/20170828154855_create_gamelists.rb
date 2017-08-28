class CreateGamelists < ActiveRecord::Migration[5.1]
  def change
    create_table :gamelists do |t|

      t.timestamps
    end
  end
end
