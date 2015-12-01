ActionDispatch::Callbacks.to_prepare do
  require_dependency 'redmine_admin_activity/projects_controller_patch' # unless Rails.env.test?
  require_dependency 'redmine_admin_activity/project_patch'
  require_dependency 'redmine_admin_activity/projects_helper_patch'
  require_dependency 'redmine_admin_activity/issues_helper_patch'
end

Redmine::Plugin.register :redmine_admin_activity do
  name 'Redmine Admin Activity plugin'
  author 'Vincent ROBERT'
  description 'This is a plugin for Redmine'
  version '1.0.0'
  url 'https://github.com/nanego/redmine_admin_activity'
end