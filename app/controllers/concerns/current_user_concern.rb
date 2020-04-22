module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # If current user exists, treat it like normal. Otherwise, do something else.
    # If no user has logged in, mock a user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@exampl.com"
    # Return the entire object by adding guest at the end
    guest
  end
end