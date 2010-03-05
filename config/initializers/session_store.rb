# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MyLibrary_session',
  :secret      => 'b0ebe90b0682d934c0c1362e6ff67a5da677869911dcc870d26bd4c97bc6ef7ebaf42372dd6e0a84724e344b81ae25f19b7983728cef3e24c87563341dbcc5b8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
