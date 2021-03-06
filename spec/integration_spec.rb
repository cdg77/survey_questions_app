require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Survey App', {:type => :feature}) do

  describe('the home path') do
    it('will navigate to a list of surveys if available') do
      visit('/')
      expect(page).to have_content('Survey List')
    end
  end

  describe('the Create a New Survey path') do
    it('will display new survey names') do
      visit('/survey/add')
      fill_in('name', :with => 'test survey name')
      click_button('Create Survey')
      expect(page).to have_content('test survey name')
    end
  end

  describe('the Add a Question path') do
    it('will display new questions by survey') do
      visit('/survey/add')
      fill_in('name', :with => 'test survey name')
      click_button('Create Survey')
      fill_in('question', :with => 'test question')
      click_button('Add Question')
      expect(page).to have_content('test question')
    end
  end
end
