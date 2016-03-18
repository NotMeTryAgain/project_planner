require 'spec_helper'

# As a user
# I want to see the members of each project
# So I know who is working on the project
# Acceptance Criteria:
#
# On a project's show page, I should see the first name, last name, and email (if any) of each user who is working on the project.

feature "User views list of project members" do
  let(:toby) do
    User.create(
      first_name: 'Toby',
      last_name: 'Willday'
    )
  end

  let(:meg) do
    User.create(
      first_name: 'Meg',
      last_name: 'Sauce',
      email: 'sauce@gmail.com'
    )
  end

  let(:bukka) do
    Project.create(
    name: 'Bukka',
    description: "Build it up, tear it down"
    )
  end

  let(:collab) do
    Collaboration.create(
    user: toby,
    project: bukka
    )
  end

  let(:collab_2) do
    Collaboration.create(
    user: meg,
    project: bukka
    )
  end


  scenario "user views project members" do
    toby
    meg
    bukka
    collab
    collab_2
    visit '/'
    click_on "Bukka"

    expect(page).to have_content "Bukka"
    expect(page).to have_content "Build it up, tear it down"
    expect(page).to have_content "Toby Willday"
    expect(page).to have_content "Meg Sauce: sauce@gmail.com"
  end
end
