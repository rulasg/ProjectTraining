---
marp: true
theme: default
paginate: true
size: 16:9
footer: '"GitHub Projects Session" by @rulasg (Feb 2024)'
---

<style>
  h1  { font-size: 90px; color: #2C4365; }
  h2  { font-size: 70px; color: #2C4365; }
  h3  { font-size: 40px; color: #2C4365; }
  #p   { color: #2C4365;}
</style>

<!-- _footer: "" -->
<!-- _paginate: skip -->

# Issues and Projects

by [@rulasg](https://github.com/rulasg)

---
<style scoped> h2 { text-align: left; } p { font-size: 35px; } </style>
<!-- _paginate: skip -->
<!-- _footer: "" -->
![bg right:40% 60% ][rulasg_profile_picture]

## Raúl González

**Principal Solution Architect** at _Solidify_
@rulasg

---

# Projects

---

## Projects

- Dashboard of Items with custom fields
- Allows plan the work using Items
- Items may be Issues, PR or Drafts

---
![bg right:60% 90%][ss_issue_pr_draft]

## Items

- Records that are managed on a project
  - Draft
  - Issues (Pull Requests)

---

## Issues

---
![bg right:60% 90%][ss_issueList]

### Issues

- Exists in **Repositories**

---
![bg right:60% 90%][ss_issue_view]

### Issues Content

- Title
- Repository
- Labels
- Milestone
- Assignee
- Tracked By
- Tracks
- Linked PR

---

### Issues Maping

![vertical][Item-vs-Issue]

---

## Drafts

---
![bg right:60% 90%][window_draftList]

### Drafts

- Exist in the Project

---
![bg right:60% 90%][windows_Draft]

### Drafts Content

- Title
- Assignee
- Description

---

### Drafts Mapping

![vertical][Item-vs-Draft]

---
![bg right:60% 100%][windows_project_link_repo]

### Link projects to repos

---

## Project Custom Fields

---
![bg right:40% 100%][project-new-field]

### Project Custom Fields

- Extra information to track
- Not shared between projects
- No limit on the number to create
- Type defines other functionalities

  - Number -> Field Sum
  - Date -> RoadMap
  - Iterations - Grouping / RoadMap

---

## Views

---
![bg right:60% 60%][ss_view_types]

[ss_view_types]: ./images/ss_view_types.png

### Views

- Display information on different layout
  - Table
  - Board
  - RoadMap

---
![bg right:60% 100%][windows_view_table]

### View Table

---
![bg right:60% 100%][window_view_board]

### View Board

---
![bg right:60% 100%][window_view_roadmap]

### View RoadMap

---

## Features

---
![bg right:60% 100%][windows_table_export]

### Feature - Export

- Export to tsv
- Copy cells on Table View

---

## Group and Field Sum

---
![bg right 70%][project-fieldsum-setup]

### Group and Field Sum setup

- Group list by fields to display relation
- Use numeric fields to Sum the value of it per grouping

---

### Group and Field Sum Result

![vertical][project-fieldum-result]

---
![bg right:60% 100%][windows_sliceing_option]

### Slice By

- Quick filter by a field

---
![bg right:70% 100%][window_sliceing]

### Slice By

---
![bg right:60% 100%][window_workflows]

[window_workflows]: ./images/window_workflows.png

### Workflows

- Automate your project

---

## Issues Hierarchy

---

### Map of issues relation

- Hierarchy of issues `Tracks` and `Tracked By`
![bg right:50% 80%][issue_tasklist_add-tracked]
![Vertical right:70% 80%][issue_tasklist_button]

---
![bg right:50% 100%][winodw_hierarchy_list]

### Issues Hierarchy

- Use Traks and Tracked By fields
  - Show on list
  - Group by

---

## More to come

- Tracking Story Points
- Time Tracking
- ...

---
![bg right:50% ][questions_man_2]

# Q&A

---

 <!------------------>

[rulasg_profile_picture]: ./images/rulasg_circle_Photo.png
[questions_man_2]: ./images/questions-man-2.webp

[issue_tasklist_add-tracked]: ./images/issue_tasklist_add-tracked.png
[issue_tasklist_button]: ./images/issue_tasklist_button.png

[project-new-field]: ./images/project-new-field.png

[project-fieldsum-setup]: ./images/project-fieldsum-setup.png
[project-fieldum-result]: ./images/project-fieldum-result.png

[ss_issueList]: ./images/ss_issueList.png
[ss_issue_view]: ./images/ss_issue_view.png
[Item-vs-Issue]: images/Item-vs-Issue.png
[Item-vs-Draft]: ./images/Item-vs-Draft.png

[window_draftList]: ./images/window_draftList.png
[windows_Draft]: ./images/windows_Draft.png
[window_sliceing]: ./images/window_sliceing.png
[windows_sliceing_option]: ./images/windows_sliceing_option.png
[windows_project_link_repo]: ./images/windows_project_link_repo.png
[winodw_hierarchy_list]: ./images/winodw_hierarchy_list.png

[ss_issue_pr_draft]: ./images/ss_issue_pr_draft.png

[window_view_board]: ./images/window_view_board.png
[window_view_roadmap]: ./images/window_view_roadmap.png

[windows_view_table]: ./images/windows_view_table.png
[windows_table_export]: ./images/windows_table_export.png
