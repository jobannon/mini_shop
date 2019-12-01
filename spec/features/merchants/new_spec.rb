require "rails_helper"

RSpec.describe "when I visit the merchants create/new page" do 
  describe "as a visitor" do 
    before(:each) do 
    #  @target = Merchant.create!(name: "Target", address: "100 Target way", city: 'denver', state: "colorado", zip: 80023) 
#      @walmart = Merchant.create!(name: "Walmart", address: "100 Walmart way", city:"tulsa", state: 'ok', zip: 80021) 

      ### fill values
      @name = "King Soopers"
      @address = "100 KingSooper way"
      @city = "dallas"
      @state = "texas"
      @zip = 10023
    end 
    
    it "allows me to fill in and click create the new merchant" do 
      visit "/merchants" 

      click_link "Create A New Merchant"
      
      expect(current_path).to eq("/merchants/new")

      fill_in :name, with: @name 
      fill_in :address, with: @address
      fill_in :city, with: @city
      fill_in :state, with: @state
      fill_in :zip, with: @zip

      click_button "Submit New Merchant"
      expect(page).to have_content(@name)
    end 
  end 
end 

