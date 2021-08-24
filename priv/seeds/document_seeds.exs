alias ManagementApi.Repo
alias ManagementApi.Management.Document

Repo.insert! %Document{
  name: "First document",
  content: "A lot of shit",
  view_count: 2,
  published: true,
  project_id: 1
}
