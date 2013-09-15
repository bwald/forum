class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :topic_id
      t.text  :content

      t.timestamps
    end

    add_index :posts, [:topic_id, :created_at], :name => "posts_by_topic_date"
  end
end
