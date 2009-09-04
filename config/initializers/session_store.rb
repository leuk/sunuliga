# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clubs_session',
  :secret      => '20381d139a594114a95c6a4fb8653ec9ce1783f6cc75e208a2509edae4d1f1f718a3eccaf6a1f9a707ecbcd41ee8bc932b723d5d1b5112ced546917e1c0cadc3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
