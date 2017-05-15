class InsertSnowboardMainCateAndSplitLine < ActiveRecord::Migration[5.0]
  def change
    sb = Category.unscoped.find_or_create_by(:id => 1)
    sb.name = '单板滑雪'
    sb.main_category_id = nil
    sb.level = 1
    sb.is_deleted = false
    sb.ori_id = 1
    sb.created_at = Time.now
    sb.ident_name = 'snowboard'
    sb.save

    sl = Category.unscoped.find_or_create_by(:id => 100)
    sl.name = '华丽的分割线'
    sl.main_category_id = nil
    sl.level = 1
    sl.is_deleted = true
    sl.ori_id = 100
    sl.created_at = Time.now
    sl.ident_name = 'sl'
    sl.save
  end
end
