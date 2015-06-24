Redmine::Plugin.register :msproject_import do
  name 'Msproject Import plugin'
  author 'Thomas Koch'
  description 'This is a plugin for Redmine to import xml-exported date from MS Project'
  version '0.1.0'
  url 'https://github.com/braini75/msproject_import.git'
  author_url 'https://github.com/braini75'
  
  permission :msproject_import, { :msproj_imp => [:upload, :import, :analyze]}
  menu :project_menu, :msproject_import, { :controller => 'msproj_imp', :action => 'upload' }, :caption => :menu_caption, :after => :settings, :param => :project_id
end