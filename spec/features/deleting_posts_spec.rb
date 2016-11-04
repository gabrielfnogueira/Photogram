require 'rails_helper'

feature 'deleting posts' do
  background do
    post = create(:post, caption: 'Abs for days.')
  end

  scenario 'Can delete a post via the interface' do
    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click

    click_link 'Edit Post'
    click_link 'Delete Post'

    expect(page).to have_content('Post has been deleted.')
    expect(page).to_not have_content('Abs for days.')
  end
end
