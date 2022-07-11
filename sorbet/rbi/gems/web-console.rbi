# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/web-console/all/web-console.rbi
#
# web-console-4.2.0

module WebConsole
  extend ActiveSupport::Autoload
end
class WebConsole::Railtie < Rails::Railtie
end
module Kernel
end
class Binding
end
module WebConsole::Interceptor
end
class WebConsole::Middleware
end
class WebConsole::Permissions
end
class WebConsole::Request < ActionDispatch::Request
end
class WebConsole::Request::GetSecureIp < ActionDispatch::RemoteIp::GetIp
end
