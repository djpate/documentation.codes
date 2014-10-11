# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# add the cofeescript files
Rails.application.config.assets.precompile += Dir.glob("app/assets/javascripts/**/*.coffee").map do |filename| 
  filename.sub('app/assets/javascripts/','')
          .sub('coffee','js')
end

#add the bower dependencies
Rails.application.config.assets.precompile += [
  'jquery/dist/jquery.js',
  'underscore/underscore.js',
  'backbone/backbone.js',
  'bootstrap/dist/js/bootstrap.js',
  'factoryjs/dist/Factory.js',
  'factoryjs/dist/BackboneFactory.js',
  'requirejs-text/text.js',
  'handlebars/handlebars.js'
]