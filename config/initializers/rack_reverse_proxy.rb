Rails.application.config.middleware.insert_before ActionDispatch::Static, Rack::ReverseProxy do
  reverse_proxy %r{^\/blog(\/?.*)$}, "#{ENV['BLOG_HOST']}$1"
  reverse_proxy '/css', ENV['BLOG_HOST']
  reverse_proxy '/posts', ENV['BLOG_HOST']
end