# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/selenium-webdriver/all/selenium-webdriver.rbi
#
# selenium-webdriver-4.3.0

module Selenium
end
module Selenium::WebDriver
end
module Selenium::WebDriver::Atoms
end
module Selenium::WebDriver::Error
end
class Selenium::WebDriver::Error::WebDriverError < StandardError
end
class Selenium::WebDriver::Error::NoSuchElementError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::NoSuchFrameError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnknownCommandError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::StaleElementReferenceError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::DetachedShadowRootError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::InvalidElementStateError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnknownError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::JavascriptError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::TimeoutError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::NoSuchWindowError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::NoSuchShadowRootError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::InvalidCookieDomainError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnableToSetCookieError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::NoSuchAlertError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::ScriptTimeoutError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::InvalidSelectorError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::SessionNotCreatedError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::MoveTargetOutOfBoundsError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::ElementNotInteractableError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::InsecureCertificateError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::InvalidArgumentError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::NoSuchCookieError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnableToCaptureScreenError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::InvalidSessionIdError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnexpectedAlertOpenError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnknownMethodError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::ElementClickInterceptedError < Selenium::WebDriver::Error::WebDriverError
end
class Selenium::WebDriver::Error::UnsupportedOperationError < Selenium::WebDriver::Error::WebDriverError
end
module Selenium::WebDriver::Platform
end
class Selenium::WebDriver::Proxy
end
class Selenium::WebDriver::LogEntry
end
module Selenium::WebDriver::FileReaper
end
class Selenium::WebDriver::Service
end
class Selenium::WebDriver::ServiceManager
end
class Selenium::WebDriver::SocketLock
end
class Selenium::WebDriver::SocketPoller
end
class Selenium::WebDriver::PortProber
end
module Selenium::WebDriver::Zipper
end
class Selenium::WebDriver::Wait
end
class Selenium::WebDriver::Alert
end
class Selenium::WebDriver::TargetLocator
end
class Selenium::WebDriver::Navigation
end
class Selenium::WebDriver::Timeouts
end
class Selenium::WebDriver::Window
end
class Selenium::WebDriver::Logger
  extend Forwardable
end
class Selenium::WebDriver::Logs
end
class Selenium::WebDriver::Manager
end
module Selenium::WebDriver::SearchContext
end
module Selenium::WebDriver::Interactions
end
class Selenium::WebDriver::Interactions::Interaction
end
module Selenium::WebDriver::Interactions::PointerEventProperties
end
class Selenium::WebDriver::Interactions::PointerCancel < Selenium::WebDriver::Interactions::Interaction
end
class Selenium::WebDriver::Interactions::PointerMove < Selenium::WebDriver::Interactions::Interaction
  include Selenium::WebDriver::Interactions::PointerEventProperties
end
class Selenium::WebDriver::Interactions::PointerPress < Selenium::WebDriver::Interactions::Interaction
  include Selenium::WebDriver::Interactions::PointerEventProperties
end
class Selenium::WebDriver::Interactions::TypingInteraction < Selenium::WebDriver::Interactions::Interaction
end
class Selenium::WebDriver::Interactions::Pause < Selenium::WebDriver::Interactions::Interaction
end
module Selenium::WebDriver::KeyActions
end
module Selenium::WebDriver::PointerActions
end
class Selenium::WebDriver::Interactions::InputDevice
end
class Selenium::WebDriver::Interactions::NoneInput < Selenium::WebDriver::Interactions::InputDevice
end
class Selenium::WebDriver::Interactions::KeyInput < Selenium::WebDriver::Interactions::InputDevice
end
class Selenium::WebDriver::Interactions::KeyInput::TypingInteraction < Selenium::WebDriver::Interactions::TypingInteraction
end
class Selenium::WebDriver::Interactions::PointerInput < Selenium::WebDriver::Interactions::InputDevice
end
class Selenium::WebDriver::Interactions::Scroll < Selenium::WebDriver::Interactions::Interaction
end
class Selenium::WebDriver::Interactions::WheelInput < Selenium::WebDriver::Interactions::InputDevice
end
module Selenium::WebDriver::WheelActions
end
class Selenium::WebDriver::WheelActions::ScrollOrigin
end
class Selenium::WebDriver::ActionBuilder
  include Selenium::WebDriver::KeyActions
  include Selenium::WebDriver::PointerActions
  include Selenium::WebDriver::WheelActions
end
module Selenium::WebDriver::HTML5
end
module Selenium::WebDriver::HTML5::SharedWebStorage
  include Enumerable
end
class Selenium::WebDriver::HTML5::LocalStorage
  include Selenium::WebDriver::HTML5::SharedWebStorage
end
class Selenium::WebDriver::HTML5::SessionStorage
  include Enumerable
  include Selenium::WebDriver::HTML5::SharedWebStorage
end
module Selenium::WebDriver::DriverExtensions
end
module Selenium::WebDriver::DriverExtensions::HasWebStorage
end
module Selenium::WebDriver::DriverExtensions::DownloadsFiles
end
module Selenium::WebDriver::DriverExtensions::HasLocation
end
module Selenium::WebDriver::DriverExtensions::HasSessionId
end
module Selenium::WebDriver::DriverExtensions::HasNetworkConditions
end
module Selenium::WebDriver::DriverExtensions::HasNetworkConnection
end
module Selenium::WebDriver::DriverExtensions::HasNetworkInterception
end
module Selenium::WebDriver::DriverExtensions::HasApplePermissions
end
module Selenium::WebDriver::DriverExtensions::HasPermissions
end
module Selenium::WebDriver::DriverExtensions::HasDebugger
end
module Selenium::WebDriver::DriverExtensions::HasContext
end
module Selenium::WebDriver::DriverExtensions::PrintsPage
end
module Selenium::WebDriver::DriverExtensions::UploadsFiles
end
module Selenium::WebDriver::DriverExtensions::FullPageScreenshot
end
module Selenium::WebDriver::DriverExtensions::HasAddons
end
module Selenium::WebDriver::DriverExtensions::HasBiDi
end
module Selenium::WebDriver::DriverExtensions::HasDevTools
end
module Selenium::WebDriver::DriverExtensions::HasAuthentication
end
module Selenium::WebDriver::DriverExtensions::HasLogs
end
module Selenium::WebDriver::DriverExtensions::HasLogEvents
  include Selenium::WebDriver::Atoms
end
module Selenium::WebDriver::DriverExtensions::HasPinnedScripts
end
module Selenium::WebDriver::DriverExtensions::HasCDP
end
module Selenium::WebDriver::DriverExtensions::HasCasting
end
module Selenium::WebDriver::DriverExtensions::HasLaunching
end
module Selenium::WebDriver::Keys
end
module Selenium::WebDriver::ProfileHelper
end
module Selenium::WebDriver::ProfileHelper::ClassMethods
end
class Selenium::WebDriver::Options
end
module Selenium::WebDriver::TakesScreenshot
end
class Selenium::WebDriver::Driver
  include Selenium::WebDriver::SearchContext
  include Selenium::WebDriver::TakesScreenshot
end
class Selenium::WebDriver::Element
  include Selenium::WebDriver::SearchContext
  include Selenium::WebDriver::TakesScreenshot
end
class Selenium::WebDriver::ShadowRoot
  include Selenium::WebDriver::SearchContext
end
class Selenium::WebDriver::WebSocketConnection
end
module Selenium::WebDriver::Chrome
end
class Selenium::WebDriver::Chrome::Service < Selenium::WebDriver::Service
end
module Selenium::WebDriver::Firefox
end
class Selenium::WebDriver::Firefox::Service < Selenium::WebDriver::Service
end
module Selenium::WebDriver::Edge
end
class Selenium::WebDriver::Edge::Service < Selenium::WebDriver::Chrome::Service
end
module Selenium::WebDriver::IE
end
class Selenium::WebDriver::IE::Service < Selenium::WebDriver::Service
end
