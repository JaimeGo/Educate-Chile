describe "the register process", :type => :feature do

  before :each do
    User.make(email: 'user@example.com', username: 'user', name: 'Joe', last_name: 'Doe', password: 'password')
  end

  it "registers me" do
    visit '/user/new'
    within("#user") do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Username', with: 'user'
      fill_in 'Name', with: 'Joe'
      fill_in 'Lastname', with: 'Doe'
      fill_in 'Password', with: 'password'
    end
    click_button 'Register'
    expect(page).to have_content 'Success'
  end
end