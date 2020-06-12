class CreateBackups < ActiveRecord::Migration[6.0]
  def change
    create_table :backups do |t|
      t.json :body

      t.timestamps
    end
  end
end
