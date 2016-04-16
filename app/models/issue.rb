class Issue < ActiveRecord::Base
  before_save :default_values

  belongs_to :user
  belongs_to :project
  belongs_to :issue_status

  validates :name, :description, presence: true

  def default_values
    self.issue_status ||= IssueStatus.first
  end
end
