require "rails_helper"

RSpec.describe "as a visitor" do 
  describe "when I visit merchants" do
    before :each do 
      @target = Merchant.create!(name: "Target", address: "100 Target way", city: 'denver', state: "colorado", zip: 80023) 
      @walmart = Merchant.create!(name: "Walmart", address: "100 Walmart way", city:"tulsa", state: 'ok', zip: 80021) 
      
    end 
    it "sees the name of each merchant in the system" do 
      visit "/merchants"

      expect(page).to have_content(@target.name)
      expect(page).to have_content(@walmart.name)
    end 
  end
end 


