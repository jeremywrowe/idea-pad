# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/kredis/all/kredis.rbi
#
# kredis-1.2.0

module Kredis
  def instrument(channel, **options, &block); end
  def logger; end
  def logger=(val); end
  def redis(config: nil); end
  def self.logger; end
  def self.logger=(val); end
  extend Kredis
  include Kredis::Connections
end
module Kredis::Connections
  def clear_all; end
  def configurator; end
  def configurator=(val); end
  def configured_for(name); end
  def connections; end
  def connections=(val); end
  def connector; end
  def connector=(val); end
  def self.configurator; end
  def self.configurator=(val); end
  def self.connections; end
  def self.connections=(val); end
  def self.connector; end
  def self.connector=(val); end
end
class Kredis::LogSubscriber < ActiveSupport::LogSubscriber
end
module Kredis::Namespace
  def namespace; end
  def namespace=(namespace); end
  def namespaced_key(key); end
end
module Kredis::Type
end
class Kredis::Type::Json < ActiveModel::Type::Value
  def cast_value(value); end
  def serialize(value); end
  def type; end
end
class Kredis::Type::DateTime < ActiveModel::Type::DateTime
  def cast_value(value); end
  def serialize(value); end
end
module Kredis::TypeCasting
  def string_to_type(value, type); end
  def strings_to_types(values, type); end
  def type_to_string(value, type); end
  def types_to_strings(values, type); end
end
class Kredis::TypeCasting::InvalidType < StandardError
end
module Kredis::Types::Proxy::Failsafe
  def fail_safe_suppressed?; end
  def failsafe; end
  def initialize(*arg0); end
  def suppress_failsafe_with(returning: nil); end
end
class Kredis::Types::Proxy
  def initialize(redis, key, **options); end
  def key; end
  def key=(arg0); end
  def log_message(method, *args, **kwargs); end
  def method_missing(method, *args, **kwargs); end
  def multi(&block); end
  def redis; end
  def redis=(arg0); end
  include Kredis::Types::Proxy::Failsafe
end
class Kredis::Types::Proxying
  def failsafe(returning: nil, &block); end
  def initialize(redis, key, **options); end
  def key; end
  def key=(arg0); end
  def proxy; end
  def proxy=(arg0); end
  def redis; end
  def redis=(arg0); end
  def self.proxying(*commands); end
  def string_to_type(*, **, &); end
  def strings_to_types(*, **, &); end
  def type_to_string(*, **, &); end
  def types_to_strings(*, **, &); end
end
class Kredis::Types::Scalar < Kredis::Types::Proxying
  def assigned?; end
  def clear; end
  def default; end
  def default=(arg0); end
  def del(*, **, &); end
  def exists?(*, **, &); end
  def expire(*, **, &); end
  def expire_at(datetime); end
  def expire_in(seconds); end
  def expireat(*, **, &); end
  def expires_in; end
  def expires_in=(arg0); end
  def get(*, **, &); end
  def set(*, **, &); end
  def to_s; end
  def typed; end
  def typed=(arg0); end
  def value; end
  def value=(value); end
end
class Kredis::Types::Counter < Kredis::Types::Proxying
  def decrby(*, **, &); end
  def decrement(by: nil); end
  def del(*, **, &); end
  def exists?(*, **, &); end
  def expires_in; end
  def expires_in=(arg0); end
  def get(*, **, &); end
  def incrby(*, **, &); end
  def increment(by: nil); end
  def multi(*, **, &); end
  def reset; end
  def set(*, **, &); end
  def value; end
end
class Kredis::Types::Cycle < Kredis::Types::Counter
  def index; end
  def next; end
  def value; end
  def values; end
  def values=(arg0); end
end
class Kredis::Types::Flag < Kredis::Types::Proxying
  def del(*, **, &); end
  def exists?(*, **, &); end
  def expires_in; end
  def expires_in=(arg0); end
  def mark(expires_in: nil, force: nil); end
  def marked?; end
  def remove; end
  def set(*, **, &); end
end
class Kredis::Types::Enum < Kredis::Types::Proxying
  def default; end
  def default=(arg0); end
  def define_predicates_for_values; end
  def del(*, **, &); end
  def exists?(*, **, &); end
  def get(*, **, &); end
  def initialize(*, **, &); end
  def reset; end
  def set(*, **, &); end
  def value; end
  def value=(value); end
  def values; end
  def values=(arg0); end
end
class Kredis::Types::Hash < Kredis::Types::Proxying
  def [](key); end
  def []=(key, value); end
  def clear; end
  def del(*, **, &); end
  def delete(*keys); end
  def entries; end
  def exists?(*, **, &); end
  def hdel(*, **, &); end
  def hget(*, **, &); end
  def hgetall(*, **, &); end
  def hkeys(*, **, &); end
  def hmget(*, **, &); end
  def hset(*, **, &); end
  def hvals(*, **, &); end
  def keys; end
  def remove; end
  def to_h; end
  def typed; end
  def typed=(arg0); end
  def update(**entries); end
  def values; end
  def values_at(*keys); end
end
class Kredis::Types::List < Kredis::Types::Proxying
  def <<(*elements, pipeline: nil); end
  def append(*elements, pipeline: nil); end
  def clear; end
  def del(*, **, &); end
  def elements; end
  def exists?(*, **, &); end
  def lpush(*, **, &); end
  def lrange(*, **, &); end
  def lrem(*, **, &); end
  def prepend(*elements, pipeline: nil); end
  def remove(*elements, pipeline: nil); end
  def rpush(*, **, &); end
  def to_a; end
  def typed; end
  def typed=(arg0); end
end
class Kredis::Types::UniqueList < Kredis::Types::List
  def <<(elements); end
  def append(elements); end
  def exists?(*, **, &); end
  def limit; end
  def limit=(arg0); end
  def ltrim(*, **, &); end
  def multi(*, **, &); end
  def prepend(elements); end
  def typed; end
  def typed=(arg0); end
end
class Kredis::Types::Set < Kredis::Types::Proxying
  def <<(*members, pipeline: nil); end
  def add(*members, pipeline: nil); end
  def clear; end
  def del(*, **, &); end
  def exists?(*, **, &); end
  def include?(member); end
  def members; end
  def multi(*, **, &); end
  def remove(*members, pipeline: nil); end
  def replace(*members); end
  def sadd(*, **, &); end
  def scard(*, **, &); end
  def sismember(*, **, &); end
  def size; end
  def smembers(*, **, &); end
  def spop(*, **, &); end
  def srem(*, **, &); end
  def take; end
  def to_a; end
  def typed; end
  def typed=(arg0); end
end
class Kredis::Types::Slots < Kredis::Types::Proxying
  def available; end
  def available=(arg0); end
  def available?; end
  def decr(*, **, &); end
  def del(*, **, &); end
  def exists?(*, **, &); end
  def get(*, **, &); end
  def incr(*, **, &); end
  def release; end
  def reserve; end
  def reset; end
  def taken; end
end
class Kredis::Types::Slots::NotAvailable < StandardError
end
module Kredis::Types
  def boolean(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def counter(key, expires_in: nil, config: nil, after_change: nil); end
  def cycle(key, values:, expires_in: nil, config: nil, after_change: nil); end
  def datetime(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def decimal(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def enum(key, values:, default:, config: nil, after_change: nil); end
  def flag(key, config: nil, after_change: nil, expires_in: nil); end
  def float(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def hash(key, typed: nil, config: nil, after_change: nil); end
  def integer(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def json(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def list(key, typed: nil, config: nil, after_change: nil); end
  def proxy(key, config: nil, after_change: nil); end
  def scalar(key, typed: nil, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def set(key, typed: nil, config: nil, after_change: nil); end
  def slot(key, config: nil, after_change: nil); end
  def slots(key, available:, config: nil, after_change: nil); end
  def string(key, default: nil, config: nil, after_change: nil, expires_in: nil); end
  def type_from(type_klass, config, key, after_change: nil, **options); end
  def unique_list(key, typed: nil, limit: nil, config: nil, after_change: nil); end
end
module Kredis::Attributes
  def enrich_after_change_with_record_access(type, original_after_change); end
  def extract_kredis_id; end
  def kredis_key_evaluated(key); end
  def kredis_key_for_attribute(name); end
  extend ActiveSupport::Concern
end
module Kredis::Attributes::ClassMethods
  def kredis_boolean(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_connection_with(method, name, key, **options); end
  def kredis_counter(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_datetime(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_decimal(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_enum(name, values:, default:, key: nil, config: nil, after_change: nil); end
  def kredis_flag(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_float(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_hash(name, key: nil, typed: nil, config: nil, after_change: nil); end
  def kredis_integer(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_json(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_list(name, key: nil, typed: nil, config: nil, after_change: nil); end
  def kredis_proxy(name, key: nil, config: nil, after_change: nil); end
  def kredis_set(name, key: nil, typed: nil, config: nil, after_change: nil); end
  def kredis_slot(name, key: nil, config: nil, after_change: nil); end
  def kredis_slots(name, available:, key: nil, config: nil, after_change: nil); end
  def kredis_string(name, key: nil, config: nil, after_change: nil, expires_in: nil); end
  def kredis_unique_list(name, limit: nil, key: nil, typed: nil, config: nil, after_change: nil); end
end
class Kredis::Railtie < Rails::Railtie
end
