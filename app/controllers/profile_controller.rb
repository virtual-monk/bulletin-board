class ProfileController < ActionController::Base
  before_action :authenticate_user!
  def show
    @attend_events = current_user.attends
    @maybe_attends = current_user.maybe_attends
  end
end
