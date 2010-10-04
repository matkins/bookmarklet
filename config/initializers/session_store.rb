# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bookmarklets_session',
  :secret      => '9a586181d254e389fcf61ac728f056a975547c54cb1f7f26abb55070716b51ba85ab6e4aef0c6d70d01b0ffd79193f665bce3c6ae85c2ee71728b2581cfc2ac0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
