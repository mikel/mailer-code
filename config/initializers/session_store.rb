# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_mailer-guide-code_session',
  :secret => '1885c5ca6396e2da3aec558378c1e1f0557e1e2416091979112b55b71d690b94dd37979cb815fb4e94a0a5726b9204085ba4c81006bb5aef2b1238b9ff11fa68'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
