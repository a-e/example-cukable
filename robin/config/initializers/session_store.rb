# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_robin_session',
  :secret      => 'df3f8b8ab1e76989e589185c6baafe7227cb1a12569d675321ea679f3680d71e815e5c23fecde2f1b34de97af43850db28ae88166546767718cbcf2029199228'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
