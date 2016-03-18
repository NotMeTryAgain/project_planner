require 'spec_helper'

# As a user
# I want to see the tasks of each project
# So I know what needs to completed in the project

# Acceptance Criteria:
# On a project's show page, I should see all the name of each task as well as the first and last name of the user assigned to the task (if there is someone assigned to the task).

feature "User views tasks for project" do
  let(:toby) do
    User.create(
      first_name: 'Toby',
      last_name: 'Willday',
      email: 'tobywill@gmail.com'
    )
  end

  let(:bukka) do
    Project.create(
      name: 'Bukka',
      description: "Build it up, tear it down"
    )
  end

  let(:task) do
    Task.create(
      name: 'Swivel the kibble',
      description: 'Keep swiveling the kibble please',
      user: toby,
      project: bukka
    )
  end

  let(:task_2) do
    Task.create(
      name: 'Shine it',
      project: bukka
    )
  end

  scenario "user views tasks" do
    toby
    bukka
    task
    task_2
    visit '/'
    click_on "Bukka"

    expect(page).to have_content "Bukka"
    expect(page).to have_content "Swivel the kibble: Toby Willday"
    expect(page).to have_content "Shine it"
  end
end
