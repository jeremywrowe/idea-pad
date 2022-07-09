# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `image_processing` gem.
# Please instead update this file by running `bin/tapioca gem image_processing`.

module ImageProcessing; end

class ImageProcessing::Builder
  include ::ImageProcessing::Chainable

  # @return [Builder] a new instance of Builder
  def initialize(options); end

  # Calls the pipeline to perform the processing from built options.
  def call!(**call_options); end

  # Returns the value of attribute options.
  def options; end

  private

  def instrument; end
  def pipeline_options; end
end

# Implements a chainable interface for building processing options.
module ImageProcessing::Chainable
  # Add multiple operations as a hash or an array.
  #
  #   .apply(resize_to_limit: [400, 400], strip: true)
  #   # or
  #   .apply([[:resize_to_limit, [400, 400]], [:strip, true])
  def apply(operations); end

  # Creates a new builder object, merging current options with new options.
  def branch(**new_options); end

  # Call the defined processing and get the result. Allows specifying
  # the source file and destination.
  def call(file = T.unsafe(nil), destination: T.unsafe(nil), **call_options); end

  # Specify the output format.
  def convert(format); end

  # Register instrumentation block that will be called around the pipeline.
  def instrumenter(&block); end

  # Specify processor options applied when loading the image.
  def loader(**options); end

  # Add an operation defined by the processor.
  def operation(name, *args, &block); end

  # Specify processor options applied when saving the image.
  def saver(**options); end

  # Specify the source image file.
  def source(file); end

  private

  # Assume that any unknown method names an operation supported by the
  # processor. Add a bang ("!") if you want processing to be performed.
  def method_missing(name, *args, **_arg2, &block); end
end

# Empty options which the builder starts with.
ImageProcessing::Chainable::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

class ImageProcessing::Error < ::StandardError; end

module ImageProcessing::MiniMagick
  extend ::ImageProcessing::Chainable

  class << self
    # Returns whether the given image file is processable.
    #
    # @return [Boolean]
    def valid_image?(file); end
  end
end

class ImageProcessing::MiniMagick::Processor < ::ImageProcessing::Processor
  # Appends a raw ImageMagick command-line argument to the command.
  def append(*args); end

  # Overlays the specified image over the current one. Supports specifying
  # an additional mask, composite mode, direction or offset of the overlay
  # image.
  #
  # @yield [magick]
  def composite(overlay = T.unsafe(nil), mask: T.unsafe(nil), mode: T.unsafe(nil), gravity: T.unsafe(nil), offset: T.unsafe(nil), args: T.unsafe(nil), **options, &block); end

  # Crops the image with the specified crop points.
  def crop(*args); end

  # Defines settings from the provided hash.
  def define(options); end

  # Specifies resource limits from the provided hash.
  def limits(options); end

  # Resizes the image to fit within the specified dimensions and fills
  # the remaining area with the specified background color.
  def resize_and_pad(width, height, background: T.unsafe(nil), gravity: T.unsafe(nil), **options); end

  # Resizes the image to fill the specified dimensions, applying any
  # necessary cropping.
  def resize_to_fill(width, height, gravity: T.unsafe(nil), **options); end

  # Resizes the image to fit within the specified dimensions.
  def resize_to_fit(width, height, **options); end

  # Resizes the image to not be larger than the specified dimensions.
  def resize_to_limit(width, height, **options); end

  # Rotates the image by an arbitrary angle. For angles that are not
  # multiple of 90 degrees an optional background color can be specified to
  # fill in the gaps.
  def rotate(degrees, background: T.unsafe(nil)); end

  protected

  def magick; end

  private

  # Converts the given color value into an identifier ImageMagick understands.
  # This supports specifying RGB(A) values with arrays, which mainly exists
  # for compatibility with the libvips implementation.
  #
  # @raise [ArgumentError]
  def color(value); end

  # Converts the image on disk in various forms into a path.
  def convert_to_path(file, name); end

  # Resizes the image using the specified geometry, and sharpens the
  # resulting thumbnail.
  def thumbnail(geometry, sharpen: T.unsafe(nil)); end

  class << self
    # Initializes the image on disk into a MiniMagick::Tool object. Accepts
    # additional options related to loading the image (e.g. geometry).
    # Additionally auto-orients the image to be upright.
    def load_image(path_or_magick, loader: T.unsafe(nil), page: T.unsafe(nil), geometry: T.unsafe(nil), auto_orient: T.unsafe(nil), **options); end

    # Calls the built ImageMagick command to perform processing and save
    # the result to disk. Accepts additional options related to saving the
    # image (e.g. quality).
    def save_image(magick, destination_path, allow_splitting: T.unsafe(nil), **options); end
  end
end

ImageProcessing::MiniMagick::Processor::ACCUMULATOR_CLASS = MiniMagick::Tool

# Default sharpening parameters used on generated thumbnails.
ImageProcessing::MiniMagick::Processor::SHARPEN_PARAMETERS = T.let(T.unsafe(nil), Hash)

module ImageProcessing::MiniMagick::Processor::Utils
  private

  # Applies settings from the provided (nested) hash.
  def apply_define(magick, options); end

  # Applies options from the provided hash.
  def apply_options(magick, define: T.unsafe(nil), **options); end

  # When a multi-layer format is being converted into a single-layer
  # format, ImageMagick will create multiple images, one for each layer.
  # We want to warn the user that this is probably not what they wanted.
  def disallow_split_layers!(destination_path); end

  class << self
    # Applies settings from the provided (nested) hash.
    def apply_define(magick, options); end

    # Applies options from the provided hash.
    def apply_options(magick, define: T.unsafe(nil), **options); end

    # When a multi-layer format is being converted into a single-layer
    # format, ImageMagick will create multiple images, one for each layer.
    # We want to warn the user that this is probably not what they wanted.
    def disallow_split_layers!(destination_path); end
  end
end

class ImageProcessing::Pipeline
  # Initializes the pipeline with all the processing options.
  #
  # @return [Pipeline] a new instance of Pipeline
  def initialize(options); end

  # Determines the destination and calls the processor.
  def call(save: T.unsafe(nil)); end

  # Returns the value of attribute destination.
  def destination; end

  # Determines the appropriate destination image format.
  def destination_format; end

  # Returns the value of attribute format.
  def format; end

  # Returns the value of attribute loader.
  def loader; end

  # Returns the value of attribute operations.
  def operations; end

  # Returns the value of attribute processor.
  def processor; end

  # Returns the value of attribute saver.
  def saver; end

  # Retrieves the source path on disk.
  def source_path; end

  private

  def call_processor(**options); end

  # Creates a new tempfile for the destination file, yields it, and refreshes
  # the file descriptor to get the updated file.
  def create_tempfile; end

  def determine_format(file_path); end

  # In case of processing errors, both libvips and imagemagick will leave the
  # empty destination file they created, so this method makes sure it is
  # deleted in case an exception is raised on saving the image.
  def handle_destination; end

  # Converts the source image object into a path or the accumulator object.
  def source; end
end

ImageProcessing::Pipeline::DEFAULT_FORMAT = T.let(T.unsafe(nil), String)

# Abstract class inherited by individual processors.
class ImageProcessing::Processor
  # @return [Processor] a new instance of Processor
  def initialize(accumulator = T.unsafe(nil)); end

  # Calls the operation to perform the processing. If the operation is
  # defined on the processor (macro), calls the method. Otherwise calls the
  # operation directly on the accumulator object. This provides a common
  # umbrella above defined macros and direct operations.
  def apply_operation(name, *args, &block); end

  # Calls the given block with the accumulator object. Useful for when you
  # want to access the accumulator object directly.
  def custom(&block); end

  class << self
    # Use for processor subclasses to specify the name and the class of their
    # accumulator object (e.g. MiniMagick::Tool or Vips::Image).
    def accumulator(name, klass); end

    # Delegates to #apply_operation.
    def apply_operation(accumulator, _arg1); end

    def call(source:, loader:, operations:, saver:, destination: T.unsafe(nil)); end

    # Whether the processor supports resizing the image upon loading.
    #
    # @return [Boolean]
    def supports_resize_on_load?; end
  end
end

ImageProcessing::VERSION = T.let(T.unsafe(nil), String)