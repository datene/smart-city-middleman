###
# Page options, layouts, aliases and proxies
###
set :js_dir, 'javascripts'
# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# activate :i18n, :mount_at_root => :en
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  # activate :livereload
end
activate :sprockets

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  set :http_prefix, "/smart-city-middleman"
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

# activate :deploy do |deploy|
#   deploy.method = :git
#   deploy.build_before = true

#   # Optional Settings
#   # deploy.remote = 'custom-remote' # remote name or git url, default: origin
#   # deploy.branch = 'custom-branch' # default: gh-pages
#   # deploy.strategy = :submodule # commit strategy: can be :force_push or :submodule, default: :force_push
#   # deploy.commit_message = 'custom-message' # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
# end