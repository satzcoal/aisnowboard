module SoftMethodHelper
  def self.included(base)
    base.class_eval do
      default_scope { where(is_deleted: false) }
      after_create :set_ori_id
    end
  end

  def soft_update(*attributes)
    transaction do
      old = self.dup
      old.record_timestamps = false
      old.created_at = self.created_at
      old.is_deleted = true
      old.updated_at = self.updated_at

      self.assign_attributes(*attributes)

      if self.changed?
        if self.valid?
          old.save(:validate => false)
          self.save(:validate => false)
        else
          false
        end
      else
        self
      end
    end
  end

  def update_delete
    transaction do
      old = self.dup
      old.record_timestamps = false
      old.created_at = self.created_at
      old.is_deleted = true
      old.updated_at = self.updated_at

      old.save(:validate => false)
      self.update_attribute(:is_deleted, true)
    end
  end

  def soft_save
    return self.save if self.new_record?
    return true unless self.changed?
    transaction do
      changes = self.changes
      changes.each do |k, v|
        changes[k] = v[1]
        self.send("reset_#{k}!")
      end
      self.soft_update(changes)
    end
  end

  def soft_delete
    self.update_attribute(:is_deleted, true)
  end

  def set_ori_id
    unless self.ori_id
      self.ori_id = self.id
      self.save(:validate => false)
    end
  end
end