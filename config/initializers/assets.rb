# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( application.css )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( shrines.css )
Rails.application.config.assets.precompile += %w( temples.css )
Rails.application.config.assets.precompile += %w( explanatories.css )
Rails.application.config.assets.precompile += %w( slick-theme.css )
Rails.application.config.assets.precompile += %w( slick.css )
Rails.application.config.assets.precompile += %w( slick.min.js )
Rails.application.config.assets.precompile += %w( shrine.js )
Rails.application.config.assets.precompile += %w( temple.js )
Rails.application.config.assets.precompile += %w( explanatories.js )
Rails.application.config.assets.precompile += %w( board_placeholder.png )
