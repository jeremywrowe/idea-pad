# frozen_string_literal: true

Devise.setup do |config|
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.http_authenticatable = true
  config.stretches = Rails.env.test? ? 1 : 10
  config.allow_unconfirmed_access_for = 2.days
  config.remember_for = 2.weeks
  config.password_length = 8..72
  config.timeout_in = 2.hours
end
