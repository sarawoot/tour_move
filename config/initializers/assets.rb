# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# JS
Rails.application.config.assets.precompile += %w( front_end/home.js )
# Style Sheet
Rails.application.config.assets.precompile += %w( theme/css/style.css )
# Image
Rails.application.config.assets.precompile += %w( theme/images/*.png )
Rails.application.config.assets.precompile += %w( theme/images/*.jpg )
Rails.application.config.assets.precompile += %w( theme/images/tour-package/*.jpg )
Rails.application.config.assets.precompile += %w( theme/images/man/*.jpg )
Rails.application.config.assets.precompile += %w( theme/images/hero-header/*.jpg )
Rails.application.config.assets.precompile += %w( theme/images/destination-grid/*.jpg )
Rails.application.config.assets.precompile += %w( theme/images/destination-grid/*.jpg )
Rails.application.config.assets.precompile += %w( theme/css/spinners/*.gif )
Rails.application.config.assets.precompile += %w( theme/images/raty/*.png )
# Fonts
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets', 'theme', 'icons', 'pe-icon-7-stroke', 'fonts')  
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets', 'theme', 'icons', 'simple-line-icons', 'fonts')  
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets', 'theme', 'icons', 'themify-icons', 'fonts')  
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets', 'theme', 'icons', 'rivolicons', 'fonts')  
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/


