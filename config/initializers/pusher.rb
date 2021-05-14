# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = "1200862"
Pusher.key = "bdb89b6d41456913174e"
Pusher.secret = "80482099766e04ba2d6c"
Pusher.cluster = "us2"
Pusher.logger = Rails.logger
Pusher.encrypted = true
