class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.string :description
      t.string :issue_type
      t.references :project, foreign_key: true
      t.integer :reporter_id
      t.integer :assignee_id

      t.timestamps
    end
  end
end
