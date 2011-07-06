# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_batman_session',
  :secret      => 'badb70ba09a596255405dd0e71fd2ff79bb2cf31713d0036f08f30186921af5b1234e779cf4b1a38dcdc2331c584f4f5004ed5a1628ff266202450d686a48538'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
