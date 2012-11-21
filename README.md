# How To
  ## Create the following directory structure
      assets/
        bourbon/
          ...
        modules/
          module_name/
          _grid_settings.scss
        neat/
          ...
        module_name.scss

  ### Watch your application stylesheets
  sass --watch assets:public/stylesheets -r ./assets/bourbon/lib/bourbon.rb
