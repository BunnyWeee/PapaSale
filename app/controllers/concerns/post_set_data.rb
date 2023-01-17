module PostSetData
  extend ActiveSupport::Concern

  private

  def set_post_user
    case params[:action]
    when 'new'
      @post.user = current_user
    when 'create', 'update'
      @post.user = params[:post][:user_id].blank? ? current_user : User.find(params[:post][:user_id])
    end
  end
end
