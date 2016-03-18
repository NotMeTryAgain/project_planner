require 'spec_helper'

# As a user
# I want to view a list of all projects
# So I know what projects are ongoing
# Acceptance Criteria:
#
# On the projects index page, I should see the name of each project.

feature "User views project details" do

  let(:project) do
    Project.create(
    name: 'Bukka',
    description: "Build it up, tear it down"
    )
  end

  scenario "user views a projects details" do
    project
    visit '/'
    click_on "Bukka"

    expect(page).to have_content "Bukka"
    expect(page).to have_content "Build it up, tear it down"
  end
end
