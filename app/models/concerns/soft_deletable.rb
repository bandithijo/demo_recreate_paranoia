module SoftDeletable
  extend ActiveSupport::Concern

  included do
    scope :deleted, ->{ where.not(deleted_at: nil) }
    scope :without_deleted, ->{ where(deleted_at: nil) }
    scope :with_deleted, ->{ all }
  end
end
