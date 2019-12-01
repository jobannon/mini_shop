require "rails_helper"

RSpec.describe "visit a merchant show page to edit" do 
  describe "as a visitor" do 
    before(:each) do 
      @target = Merchant.create!(name: "Target", address: "100 Target way", city: 'denver', state: "colorado", zip: 80023) 
      @walmart = Merchant.create!(name: "Walmart", address: "100 Walmart way", city:"tulsa", state: 'ok', zip: 80021) 
      
      ### fill values
      @name = "Targetedit"
      @address = "100 Target Way edited"
      @city = "edited"
      @state = "state edited"
      @zip = 10021
    end 
    
    it "it has a form to fill out" do 
      visit "/merchants/#{@target.id}/edit"  

      fill_in :name, with: @name 
      fill_in :address, with: @address
      fill_in :city, with: @city
      fill_in :state, with: @state
      fill_in :zip, with: @zip

      click_button "Submit Updated Merchant Information"

      expect(page).to have_content(@name)
      expect(page).to have_content(@address)
      expect(page).to have_content(@city)
      expect(page).to have_content(@state)
      expect(page).to have_content(@zip)

      expect(current_path).to eq("/merchants/#{@target.id}")
    end 
  end 
end 
