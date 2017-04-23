feature 'Creating new space' do


  scenario 'User fills out space details and submits' do
    sign_up
    expect{add_new_space}.to change(Space, :count).by(1)
    expect(page).to have_content "Available Spaces"
  end

end
