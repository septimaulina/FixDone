class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.references :issue_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
