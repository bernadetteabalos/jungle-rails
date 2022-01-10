require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    
    before do 
      @user = User.new(name:"Brenda Song", email:"londontipton@tipton.com", password:"imrich", password_confirmation:"imrich")
    end

    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end

    it "should have a valid name" do
      @user.name = nil
      @user.valid?
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "should have a valid email" do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "should have a valid password" do
      @user.password = nil
      @user.password_confirmation = nil
      @user.valid?
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "should have matching passwords" do
      @user.password = "imrich"
      @user.password_confirmation = "imnotrich"
      @user.valid?
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "should have password length of atleast 5 characters" do
      @user.password = "lol"
      @user.password_confirmation = "lol"
      @user.valid?
      expect(@user.errors.full_messages).to_not be_empty
    end
  end

  describe '.authenticate_with_credentials' do

    before do
      @user = User.new(name:"Brenda Song", email:"londontipton@tipton.com", password:"imrich", password_confirmation:"imrich")
    end

    it 'should login if email is correct' do
      @user.save
      expect(User.authenticate_with_credentials("londontipton@tipton.com", "imrich")).to_not be_nil
    end

    it 'should not login if email is incorrect' do
      @user.save
      expect(User.authenticate_with_credentials("londontiptoes@tiptoe.com", "imrich")).to be_nil
    end

    it 'should login if the email has spaces' do
      @user.save
      expect(User.authenticate_with_credentials("  londontipton@tipton.com ", "imrich")).to_not be_nil
    end

    it 'should login if casing is incorrect' do
      @user.save
      expect(User.authenticate_with_credentials("LondonTipton@tipton.com", "imrich")).to_not be_nil
    end

  end 
end