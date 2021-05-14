# README

Ruby on Rails set up for WSL following: https://gorails.com/setup/windows/10. 

* Ruby version: ruby 3.0.1p64

* Rails version: 6.1.3.2

* Database creation: Using MySQL.

* Database initialization: rake db:create

* Services: Upload images to public server with captions and tags. View other images in real time.

* Deployment instructions:
```
rails server
```

Note: This currently contains keys to "burner" Cloudinary and Pusher accounts. If you wish to create a similar website with your own accounts:
* go to config and modify cloudinary.yml to your Cloudinary keys
* go to config/initializers and modify pusher.rb to your Pusher keys

Frontend and Search features are currently being implemented. Have fun looking at my cat!