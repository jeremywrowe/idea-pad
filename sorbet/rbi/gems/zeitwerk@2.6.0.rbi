# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `zeitwerk` gem.
# Please instead update this file by running `bin/tapioca gem zeitwerk`.

# Kernel extensions for minitest
module Kernel
  private

  def require(path); end

  class << self
    def require(path); end
  end
end

module Zeitwerk
  class << self
    # This is a dangerous method.
    def with_loader; end
  end
end

class Zeitwerk::Error < ::StandardError; end

# Centralizes the logic for the trace point used to detect the creation of
# explicit namespaces, needed to descend into matching subdirectories right
# after the constant has been defined.
#
# The implementation assumes an explicit namespace is managed by one loader.
# Loaders that reopen namespaces owned by other projects are responsible for
# loading their constant before setup. This is documented.
module Zeitwerk::ExplicitNamespace
  extend ::Zeitwerk::RealModName

  class << self
    # Maps constant paths that correspond to explicit namespaces according to
    # the file system, to the loader responsible for them.
    #
    # @private
    def cpaths; end

    # @private
    def mutex; end

    # Asserts `cpath` corresponds to an explicit namespace for which `loader`
    # is responsible.
    #
    # @private
    def register(cpath, loader); end

    # @private
    def tracer; end

    # @private
    def unregister_loader(loader); end

    private

    def disable_tracer_if_unneeded; end
    def tracepoint_class_callback(event); end
  end
end

class Zeitwerk::GemInflector < ::Zeitwerk::Inflector
  # @return [GemInflector] a new instance of GemInflector
  def initialize(root_file); end

  def camelize(basename, abspath); end
end

# @private
class Zeitwerk::GemLoader < ::Zeitwerk::Loader
  # @return [GemLoader] a new instance of GemLoader
  def initialize(root_file, warn_on_extra_files:); end

  def setup; end

  private

  def warn_on_extra_files; end

  class << self
    # @private
    def _new(root_file, warn_on_extra_files:); end
  end
end

class Zeitwerk::Inflector
  # Very basic snake case -> camel case conversion.
  #
  #   inflector = Zeitwerk::Inflector.new
  #   inflector.camelize("post", ...)             # => "Post"
  #   inflector.camelize("users_controller", ...) # => "UsersController"
  #   inflector.camelize("api", ...)              # => "Api"
  #
  # Takes into account hard-coded mappings configured with `inflect`.
  def camelize(basename, _abspath); end

  # Configures hard-coded inflections:
  #
  #   inflector = Zeitwerk::Inflector.new
  #   inflector.inflect(
  #     "html_parser"   => "HTMLParser",
  #     "mysql_adapter" => "MySQLAdapter"
  #   )
  #
  #   inflector.camelize("html_parser", abspath)      # => "HTMLParser"
  #   inflector.camelize("mysql_adapter", abspath)    # => "MySQLAdapter"
  #   inflector.camelize("users_controller", abspath) # => "UsersController"
  def inflect(inflections); end

  private

  # Hard-coded basename to constant name user maps that override the default
  # inflection logic.
  def overrides; end
end

class Zeitwerk::Loader
  include ::Zeitwerk::RealModName
  include ::Zeitwerk::Loader::Callbacks
  include ::Zeitwerk::Loader::Helpers
  include ::Zeitwerk::Loader::Config

  # @return [Loader] a new instance of Loader
  def initialize; end

  # We keep track of autoloaded directories to remove them from the registry
  # at the end of eager loading.
  #
  # Files are removed as they are autoloaded, but directories need to wait due
  # to concurrency (see why in Zeitwerk::Loader::Callbacks#on_dir_autoloaded).
  #
  # @private
  def autoloaded_dirs; end

  # Maps absolute paths for which an autoload has been set ---and not
  # executed--- to their corresponding parent class or module and constant
  # name.
  #
  #   "/Users/fxn/blog/app/models/user.rb"          => [Object, :User],
  #   "/Users/fxn/blog/app/models/hotel/pricing.rb" => [Hotel, :Pricing]
  #   ...
  #
  # @private
  def autoloads; end

  # Eager loads all files in the root directories, recursively. Files do not
  # need to be in `$LOAD_PATH`, absolute file names are used. Ignored files
  # are not eager loaded. You can opt-out specifically in specific files and
  # directories with `do_not_eager_load`, and that can be overridden passing
  # `force: true`.
  def eager_load(force: T.unsafe(nil)); end

  # Maps constant paths of namespaces to arrays of corresponding directories.
  #
  # For example, given this mapping:
  #
  #   "Admin" => [
  #     "/Users/fxn/blog/app/controllers/admin",
  #     "/Users/fxn/blog/app/models/admin",
  #     ...
  #   ]
  #
  # when `Admin` gets defined we know that it plays the role of a namespace and
  # that its children are spread over those directories. We'll visit them to set
  # up the corresponding autoloads.
  #
  # @private
  def lazy_subdirs; end

  # @private
  def mutex; end

  # @private
  def mutex2; end

  # Unloads all loaded code, and calls setup again so that the loader is able
  # to pick any changes in the file system.
  #
  # This method is not thread-safe, please see how this can be achieved by
  # client code in the README of the project.
  #
  # @raise [Zeitwerk::Error]
  def reload; end

  # Sets autoloads in the root namespace.
  def setup; end

  # Stores metadata needed for unloading. Its entries look like this:
  #
  #   "Admin::Role" => [".../admin/role.rb", [Admin, :Role]]
  #
  # The cpath as key helps implementing unloadable_cpath? The file name is
  # stored in order to be able to delete it from $LOADED_FEATURES, and the
  # pair [Module, Symbol] is used to remove_const the constant from the class
  # or module object.
  #
  # If reloading is enabled, this hash is filled as constants are autoloaded
  # or eager loaded. Otherwise, the collection remains empty.
  #
  # @private
  def to_unload; end

  # Removes loaded constants and configured autoloads.
  #
  # The objects the constants stored are no longer reachable through them. In
  # addition, since said objects are normally not referenced from anywhere
  # else, they are eligible for garbage collection, which would effectively
  # unload them.
  #
  # This method is public but undocumented. Main interface is `reload`, which
  # means `unload` + `setup`. This one is avaiable to be used together with
  # `unregister`, which is undocumented too.
  def unload; end

  # Says if the given constant path would be unloaded on reload. This
  # predicate returns `false` if reloading is disabled.
  #
  # @return [Boolean]
  def unloadable_cpath?(cpath); end

  # Returns an array with the constant paths that would be unloaded on reload.
  # This predicate returns an empty array if reloading is disabled.
  def unloadable_cpaths; end

  # This is a dangerous method.
  def unregister; end

  private

  def autoload_file(parent, cname, file); end

  # @return [Boolean]
  def autoload_path_set_by_me_for?(parent, cname); end

  def autoload_subdir(parent, cname, subdir); end

  # `dir` is the directory that would have autovivified a namespace. `file` is
  # the file where we've found the namespace is explicitly defined.
  def promote_namespace_from_implicit_to_explicit(dir:, file:, parent:, cname:); end

  def raise_if_conflicting_directory(dir); end
  def register_explicit_namespace(cpath); end
  def run_on_unload_callbacks(cpath, value, abspath); end
  def set_autoload(parent, cname, abspath); end
  def set_autoloads_in_dir(dir, parent); end
  def unload_autoload(parent, cname); end
  def unload_cref(parent, cname); end

  class << self
    # Returns an array with the absolute paths of the root directories of all
    # registered loaders. This is a read-only collection.
    def all_dirs; end

    # Returns the value of attribute default_logger.
    def default_logger; end

    # Sets the attribute default_logger
    #
    # @param value the value to set the attribute default_logger to.
    def default_logger=(_arg0); end

    # Broadcasts `eager_load` to all loaders.
    def eager_load_all; end

    # This is a shortcut for
    #
    #   require "zeitwerk"
    #   loader = Zeitwerk::Loader.new
    #   loader.tag = File.basename(__FILE__, ".rb")
    #   loader.inflector = Zeitwerk::GemInflector.new(__FILE__)
    #   loader.push_dir(__dir__)
    #
    # except that this method returns the same object in subsequent calls from
    # the same file, in the unlikely case the gem wants to be able to reload.
    #
    # This method returns a subclass of Zeitwerk::Loader, but the exact type
    # is private, client code can only rely on the interface.
    def for_gem(warn_on_extra_files: T.unsafe(nil)); end
  end
end

module Zeitwerk::Loader::Callbacks
  include ::Zeitwerk::RealModName

  # Invoked from our decorated Kernel#require when a managed directory is
  # autoloaded.
  #
  # @private
  def on_dir_autoloaded(dir); end

  # Invoked from our decorated Kernel#require when a managed file is autoloaded.
  #
  # @private
  def on_file_autoloaded(file); end

  # Invoked when a class or module is created or reopened, either from the
  # tracer or from module autovivification. If the namespace has matching
  # subdirectories, we descend into them now.
  #
  # @private
  def on_namespace_loaded(namespace); end

  private

  def run_on_load_callbacks(cpath, value, abspath); end
end

module Zeitwerk::Loader::Config
  def initialize; end

  # Configure directories or glob patterns to be collapsed.
  def collapse(*glob_patterns); end

  # The actual collection of absolute directory names at the time the collapse
  # glob patterns were expanded. Computed on setup, and recomputed on reload.
  #
  # @private
  def collapse_dirs; end

  # Absolute paths of directories or glob patterns to be collapsed.
  #
  # @private
  def collapse_glob_patterns; end

  # Absolute paths of the root directories. This is a read-only collection,
  # please push here via `push_dir`.
  def dirs; end

  # Let eager load ignore the given files or directories. The constants defined
  # in those files are still autoloadable.
  def do_not_eager_load(*paths); end

  # Absolute paths of files or directories not to be eager loaded.
  #
  # @private
  def eager_load_exclusions; end

  # You need to call this method before setup in order to be able to reload.
  # There is no way to undo this, either you want to reload or you don't.
  #
  # @raise [Zeitwerk::Error]
  def enable_reloading; end

  # Configure files, directories, or glob patterns to be totally ignored.
  def ignore(*glob_patterns); end

  # Absolute paths of files, directories, or glob patterns to be totally
  # ignored.
  #
  # @private
  def ignored_glob_patterns; end

  # The actual collection of absolute file and directory names at the time the
  # ignored glob patterns were expanded. Computed on setup, and recomputed on
  # reload.
  #
  # @private
  def ignored_paths; end

  # @private
  # @return [Boolean]
  def ignores?(abspath); end

  # Returns the value of attribute inflector.
  def inflector; end

  # Sets the attribute inflector
  #
  # @param value the value to set the attribute inflector to.
  def inflector=(_arg0); end

  # Logs to `$stdout`, handy shortcut for debugging.
  def log!; end

  # Returns the value of attribute logger.
  def logger; end

  # Sets the attribute logger
  #
  # @param value the value to set the attribute logger to.
  def logger=(_arg0); end

  # Configure a block to be invoked once a certain constant path is loaded.
  # Supports multiple callbacks, and if there are many, they are executed in
  # the order in which they were defined.
  #
  #   loader.on_load("SomeApiClient") do |klass, _abspath|
  #     klass.endpoint = "https://api.dev"
  #   end
  #
  # Can also be configured for any constant loaded:
  #
  #   loader.on_load do |cpath, value, abspath|
  #     # ...
  #   end
  #
  # @raise [TypeError]
  def on_load(cpath = T.unsafe(nil), &block); end

  # User-oriented callbacks to be fired when a constant is loaded.
  #
  # @private
  def on_load_callbacks; end

  # Configure a block to be called after setup and on each reload.
  # If setup was already done, the block runs immediately.
  def on_setup(&block); end

  # User-oriented callbacks to be fired on setup and on reload.
  #
  # @private
  def on_setup_callbacks; end

  # Configure a block to be invoked right before a certain constant is removed.
  # Supports multiple callbacks, and if there are many, they are executed in the
  # order in which they were defined.
  #
  #   loader.on_unload("Country") do |klass, _abspath|
  #     klass.clear_cache
  #   end
  #
  # Can also be configured for any removed constant:
  #
  #   loader.on_unload do |cpath, value, abspath|
  #     # ...
  #   end
  #
  # @raise [TypeError]
  def on_unload(cpath = T.unsafe(nil), &block); end

  # User-oriented callbacks to be fired before constants are removed.
  #
  # @private
  def on_unload_callbacks; end

  # Pushes `path` to the list of root directories.
  #
  # Raises `Zeitwerk::Error` if `path` does not exist, or if another loader in
  # the same process already manages that directory or one of its ascendants or
  # descendants.
  #
  # @raise [Zeitwerk::Error]
  def push_dir(path, namespace: T.unsafe(nil)); end

  # @return [Boolean]
  def reloading_enabled?; end

  # Absolute paths of the root directories. Stored in a hash to preserve
  # order, easily handle duplicates, and also be able to have a fast lookup,
  # needed for detecting nested paths.
  #
  #   "/Users/fxn/blog/app/assets"   => true,
  #   "/Users/fxn/blog/app/channels" => true,
  #   ...
  #
  # This is a private collection maintained by the loader. The public
  # interface for it is `push_dir` and `dirs`.
  #
  # @private
  def root_dirs; end

  # Returns the loader's tag.
  #
  # Implemented as a method instead of via attr_reader for symmetry with the
  # writer below.
  def tag; end

  # Sets a tag for the loader, useful for logging.
  def tag=(tag); end

  private

  def actual_root_dirs; end

  # @return [Boolean]
  def collapse?(dir); end

  # @return [Boolean]
  def excluded_from_eager_load?(abspath); end

  def expand_glob_patterns(glob_patterns); end
  def expand_paths(paths); end
  def recompute_collapse_dirs; end
  def recompute_ignored_paths; end

  # @return [Boolean]
  def root_dir?(dir); end
end

module Zeitwerk::Loader::Helpers
  private

  # @return [Boolean]
  def cdef?(parent, cname); end

  # @raise [NameError]
  def cget(parent, cname); end

  # Symbol#name was introduced in Ruby 3.0. It returns always the same
  # frozen object, so we may save a few string allocations.
  def cpath(parent, cname); end

  # @return [Boolean]
  def dir?(path); end

  # @return [Boolean]
  def has_at_least_one_ruby_file?(dir); end

  # @return [Boolean]
  def hidden?(basename); end

  def log(message); end
  def ls(dir); end

  # @return [Boolean]
  def ruby?(path); end

  def strict_autoload_path(parent, cname); end
end

Zeitwerk::Loader::MUTEX = T.let(T.unsafe(nil), Thread::Mutex)
class Zeitwerk::NameError < ::NameError; end

module Zeitwerk::RealModName
  def real_mod_name(mod); end
end

Zeitwerk::RealModName::UNBOUND_METHOD_MODULE_NAME = T.let(T.unsafe(nil), UnboundMethod)

module Zeitwerk::Registry
  class << self
    # Maps absolute paths to the loaders responsible for them.
    #
    # This information is used by our decorated `Kernel#require` to be able to
    # invoke callbacks and autovivify modules.
    #
    # @private
    def autoloads; end

    # Registers gem loaders to let `for_gem` be idempotent in case of reload.
    #
    # @private
    def gem_loaders_by_root_file; end

    # @private
    # @return [Boolean]
    def inception?(cpath); end

    # This hash table addresses an edge case in which an autoload is ignored.
    #
    # For example, let's suppose we want to autoload in a gem like this:
    #
    #   # lib/my_gem.rb
    #   loader = Zeitwerk::Loader.new
    #   loader.push_dir(__dir__)
    #   loader.setup
    #
    #   module MyGem
    #   end
    #
    # if you require "my_gem", as Bundler would do, this happens while setting
    # up autoloads:
    #
    #   1. Object.autoload?(:MyGem) returns `nil` because the autoload for
    #      the constant is issued by Zeitwerk while the same file is being
    #      required.
    #   2. The constant `MyGem` is undefined while setup runs.
    #
    # Therefore, a directory `lib/my_gem` would autovivify a module according to
    # the existing information. But that would be wrong.
    #
    # To overcome this fundamental limitation, we keep track of the constant
    # paths that are in this situation ---in the example above, "MyGem"--- and
    # take this collection into account for the autovivification logic.
    #
    # Note that you cannot generally address this by moving the setup code
    # below the constant definition, because we want libraries to be able to
    # use managed constants in the module body:
    #
    #   module MyGem
    #     include MyConcern
    #   end
    #
    # @private
    def inceptions; end

    # @private
    def loader_for(path); end

    # This method returns always a loader, the same instance for the same root
    # file. That is how Zeitwerk::Loader.for_gem is idempotent.
    #
    # @private
    def loader_for_gem(root_file, warn_on_extra_files:); end

    # Keeps track of all loaders. Useful to broadcast messages and to prevent
    # them from being garbage collected.
    #
    # @private
    def loaders; end

    # @private
    def on_unload(loader); end

    # @private
    def register_autoload(loader, abspath); end

    # @private
    def register_inception(cpath, abspath, loader); end

    # Registers a loader.
    #
    # @private
    def register_loader(loader); end

    # @private
    def unregister_autoload(abspath); end

    # @private
    def unregister_loader(loader); end
  end
end

class Zeitwerk::ReloadingDisabledError < ::Zeitwerk::Error
  # @return [ReloadingDisabledError] a new instance of ReloadingDisabledError
  def initialize; end
end

Zeitwerk::VERSION = T.let(T.unsafe(nil), String)
