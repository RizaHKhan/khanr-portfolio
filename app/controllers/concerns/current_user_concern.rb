module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # If current user exists, treat it like normal. Otherwise, do something else.
    # If no user has logged in, mock a user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest",
                   first_name: "Guest",
                   last_name: "Mest",
                   email: "guest@example.com"
                  )
  end

end