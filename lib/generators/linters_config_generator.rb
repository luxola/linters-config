require 'rails/generators'

class LintersConfigGenerator < Rails::Generators::Base
  source_root File.expand_path('../../linters_config', __FILE__)

  def create_initializer
    copy_file '../../rubocop/.rubocop.yml', '.rubocop.yml'
  end
end
