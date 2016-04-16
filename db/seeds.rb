User.delete_all
user = User.create!(
		email: 'admin@mail.com', 
		password: 'password')

IssueStatus.delete_all
status_list = [
  "Open",
  "On Progress",
  "Done",
  "Close"
]
IssueStatus.delete_all
status_list.each do |name|
  IssueStatus.create!(name: name)
end