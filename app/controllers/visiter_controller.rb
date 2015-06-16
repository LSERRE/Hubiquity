class VisiterController < ApplicationController
 def add
    user_id = current_user.id

    @relation = Visiter.create(user_id: user_id, visit_id: params[:visit_id], visitDate: params[:visitDate], visitTime: params[:visitTime], confirmed: 0)
    @relation.save
    redirect_to visit_index_path
  end
end
