require "rails_helper"

RSpec.describe "as a visitor" do 
  describe "visit /merchants/:id" do 
    before(:each) do 
      @target = Merchant.create!(name: "Target", address: "100 Target way", city: 'denver', state: "colorado", zip: 80023) 
      @walmart = Merchant.create!(name: "Walmart", address: "100 Walmart way", city:"tulsa", state: 'ok', zip: 80021) 
    end 

    it "shows a list of merchants information including:
    -name 
    -address
    -city
    -state
    -zip for target" do 
      
      visit "merchants/#{@target.id}"
      
      expect(page).to have_content(@target.name)
      expect(page).to have_content(@target.address)
      expect(page).to have_content(@target.city)
      expect(page).to have_content(@target.state)
      expect(page).to have_content(@target.zip)
    end 

    it "shows a list of merchants information including:
    -name 
    -address
    -city
    -state
    -zip for walmart" do 
      
      visit "merchants/#{@walmart.id}"
      
      expect(page).to have_content(@walmart.name)
      expect(page).to have_content(@walmart.address)
      expect(page).to have_content(@walmart.city)
      expect(page).to have_content(@walmart.state)
      expect(page).to have_content(@walmart.zip)
    end 

    it "has a link to update the merchant" do 
      visit "/merchants/#{@target.id}"

      click_link "Update This Merchant"
    end

    it "has a link to delete the merchant" do 
      visit "/merchants/#{@target.id}"
      
      click_link "Delete This Merchant"

      expect(page).to_not have_content(@target.name)
      expect(current_path).to eq("/merchants")
    end
  end 
end

