# This is an autogenerated file for dynamic methods in ActionText::EncryptedRichText
# Please rerun bundle exec rake rails_rbi:models[ActionText::EncryptedRichText] to regenerate.

# typed: ignore
module ActionText::EncryptedRichText::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ActionText::EncryptedRichText::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ActionText::EncryptedRichText]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ActionText::EncryptedRichText]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ActionText::EncryptedRichText]) }
  def find_n(*args); end

  sig { params(id: T.nilable(Integer)).returns(T.nilable(ActionText::EncryptedRichText)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ActionText::EncryptedRichText) }
  def find_by_id!(id); end
end

class ActionText::EncryptedRichText < ActionText::RichText
  include ActionText::EncryptedRichText::GeneratedAssociationMethods
  extend ActionText::EncryptedRichText::CustomFinderMethods
  extend ActionText::EncryptedRichText::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(ActionText::EncryptedRichText::ActiveRecord_Relation, ActionText::EncryptedRichText::ActiveRecord_Associations_CollectionProxy, ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def self.with_attached_embeds(*args); end
end

class ActionText::EncryptedRichText::ActiveRecord_Relation < ActiveRecord::Relation
  include ActionText::EncryptedRichText::ActiveRelation_WhereNot
  include ActionText::EncryptedRichText::CustomFinderMethods
  include ActionText::EncryptedRichText::QueryMethodsReturningRelation
  Elem = type_member {{fixed: ActionText::EncryptedRichText}}

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def with_attached_embeds(*args); end
end

class ActionText::EncryptedRichText::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ActionText::EncryptedRichText::ActiveRelation_WhereNot
  include ActionText::EncryptedRichText::CustomFinderMethods
  include ActionText::EncryptedRichText::QueryMethodsReturningAssociationRelation
  Elem = type_member {{fixed: ActionText::EncryptedRichText}}

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def with_attached_embeds(*args); end
end

class ActionText::EncryptedRichText::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ActionText::EncryptedRichText::CustomFinderMethods
  include ActionText::EncryptedRichText::QueryMethodsReturningAssociationRelation
  Elem = type_member {{fixed: ActionText::EncryptedRichText}}

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def with_attached_embeds(*args); end

  sig { params(records: T.any(ActionText::EncryptedRichText, T::Array[ActionText::EncryptedRichText])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ActionText::EncryptedRichText, T::Array[ActionText::EncryptedRichText])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ActionText::EncryptedRichText, T::Array[ActionText::EncryptedRichText])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ActionText::EncryptedRichText, T::Array[ActionText::EncryptedRichText])).returns(T.self_type) }
  def concat(*records); end
end

module ActionText::EncryptedRichText::QueryMethodsReturningRelation
  sig { returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: ActionText::EncryptedRichText).returns(T::Boolean)).returns(T::Array[ActionText::EncryptedRichText]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def where_missing(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ActionText::EncryptedRichText::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ActionText::EncryptedRichText::QueryMethodsReturningAssociationRelation
  sig { returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActionText::EncryptedRichText::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: ActionText::EncryptedRichText).returns(T::Boolean)).returns(T::Array[ActionText::EncryptedRichText]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def where_missing(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActionText::EncryptedRichText::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ActionText::EncryptedRichText::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ActionText::EncryptedRichText::GeneratedAssociationMethods
  sig { returns(::ActiveStorage::Attachment::ActiveRecord_Associations_CollectionProxy) }
  def embeds_attachments; end

  sig { returns(T::Array[T.untyped]) }
  def embeds_attachment_ids; end

  sig { params(value: T::Enumerable[::ActiveStorage::Attachment]).void }
  def embeds_attachments=(value); end

  sig { returns(::ActiveStorage::Blob::ActiveRecord_Associations_CollectionProxy) }
  def embeds_blobs; end

  sig { returns(T::Array[T.untyped]) }
  def embeds_blob_ids; end

  sig { params(value: T::Enumerable[::ActiveStorage::Blob]).void }
  def embeds_blobs=(value); end

  sig { returns(T.untyped) }
  def record; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: T.untyped).void)).returns(T.untyped) }
  def build_record(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: T.untyped).void)).returns(T.untyped) }
  def create_record(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: T.untyped).void)).returns(T.untyped) }
  def create_record!(*args, &block); end

  sig { params(value: T.untyped).void }
  def record=(value); end

  sig { returns(T.untyped) }
  def reload_record; end

  sig { returns(T.nilable(ActiveStorage::Attached::Many)) }
  def embeds; end

  sig { params(attachables: T.untyped).returns(T.untyped) }
  def embeds=(attachables); end
end
