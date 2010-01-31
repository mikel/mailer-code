# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_mailer-guide-code_session',
  :secret => 'd02100653f4bd12488efe9b658fa5d1999f3fe4dfb9d9e8748922294976383b865475a05e0b7d8f04ef6932b88a43c2c2fbc08075389d750eaf4c29184bd239d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
