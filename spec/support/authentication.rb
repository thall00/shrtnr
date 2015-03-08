include SessionsHelper

def sign_in(user)
  allow(self.controller).to receive(:current_user).and_return(user)
end
