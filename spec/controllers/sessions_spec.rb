require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
  context 'if user logs in successfully' do
    before (:each) do
      @alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
      controller.session[:user_id] = @alex.id
    end

     it 'responds with a 200 status' do
       expect(@response.status).to eq(200)
     end

     it 'knows the name of the current_user' do
       expect(controller.current_user.name).to eq("Alex")
     end
  end

  context 'create' do
    before (:each) do
      @me = User.create(name: "Alex", email: "me@gmail.com", password: "1234")
    end
    it 'redirects to user page if user authenticates with email and password' do
      #binding.pry
      post :create, email: @me.email, password: @me.password
      expect(request.session[:user_id]).to eq(@me.id)
      expect(response).to redirect_to user_path(@me)
    end

    it 'does not permit log in if email and password are not correct' do
      @me = User.create(name: "Alex", email: "me@gmail.com", password: "1234")
      post :create
      expect(response).to redirect_to '/'
    end

    it 'does not permit log in if email and password are not correct' do
      @me = User.create(name: "Alex", email: "me@gmail.com", password: "1234")
      post :create, email: 'blah', password: '1234'
      expect(response).to redirect_to '/'
    end

    it 'does not permit log in if email and password are not correct' do
      @me = User.create(name: "Alex", email: "me@gmail.com", password: "1234")
      post :create, email: 'alxsanborn@gmail.com', password: '5678'
      expect(response).to redirect_to '/'
    end
   end

   context 'logout' do
     before (:each) do
       @alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
       controller.session[:user_id] = @alex.id
     end
     it 'logs a user out' do
       post :destroy, session[:user_id] = nil
       expect(response).to redirect_to '/'
     end
   end

end
