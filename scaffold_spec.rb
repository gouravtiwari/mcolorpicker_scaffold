Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the specified folder must contain this file
  base_url  'https://github.com/gouravtiwari/mcolorpicker_scaffold'

  # The name of your new scaffold: should be a single word
  name 'mcolorpicker'

  # Metadata about this scaffold - these values are only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'mcolorpicker plugin added in scaffold, so that you can allow users/admin to change color of a section.'

    # 4x3 aspect ratio screen shot
    screenshot 'mcolorpicker_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'jquery'
    tag 'mcolorpicker'
    
    # Optionally specify an example of a scaffold parameter
    parameter_example 'COLOR_FIELD_NAME'
    # Optionally post a link to an article you write explaining how the scaffold works.
    blog_post 'http://blog.meta100.com/post/600571131/mcolorpicker'
  end

  # Define a model template - this ERB file will be used to generate a new
  # model class with this path & filename: app/models/NAME.rb
  model 'templates/model.rb'

  # Define an ActiveRecord migration template - this ERB file will be used to generate a new
  # migration class with this path & filename: db/migrate/TIMESTAMP_create_PLURAL_NAME.rb
  migration 'templates/migration.rb'

  # Define a controller template - this ERB file will be used to generate a new
  # controller class with this path & filename: app/controllers/PLURAL_NAME.rb
  controller 'templates/controller.rb'

  # You can use "with_options" to specify the same source folder for a series of templates:
  # You can also specify the same destination folder using the :dest option,
  # or just use the :src and :dest options on each keyword.
  with_options :src => 'templates' do
    view '_form.html.erb'
    view 'new.html.erb'
    view 'edit.html.erb'
    view 'index.html.erb'
    view 'show.html.erb'
    
    # The layout file needs a different dest folder and file name
    template 'layout.erb', :dest => 'app/views/layouts', :rename => 'PLURAL_NAME.html.erb'
  end

  with_options :src => 'templates/jquery', :dest => 'public/javascripts' do
    file 'jquery-1.6.1.min.js'
    file 'mColorPicker.min.js'
  end

  with_options :src => 'templates/jquery', :dest => 'public/images' do
    file 'color.png'
    file 'colorpicker.png'
    file 'graybar.jpg'
    file 'grid.gif'
    file 'meta100.png'
    file 'transparentpixel.gif'
  end

  post_install_message <<MESSAGE
Follow these steps to use the JQuery mcolorpicker plugin in your
new scaffold:
- Run "rake db:migrate" to create your new PLURAL_NAME database table
- Run your Rails server
- Open http://localhost:3000/PLURAL_NAME
... to see the index page. Now when you create a new record and add select 
color in SCAFFOLD_PARAMETER field you will notice that on show page of
that record have that color applied!!!
MESSAGE


end
