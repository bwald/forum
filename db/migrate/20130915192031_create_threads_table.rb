class CreateThreadsTable < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.string :subject
      t.timestamps
    end

    add_index :threads, [:updated_at], :name => "index_threads_by_updated_at"
  end
end
