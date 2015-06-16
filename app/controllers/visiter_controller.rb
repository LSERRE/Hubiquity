class VisiterController < ApplicationController
 def add
    user_id = current_user.id
    visit_id ||= Visit.find_by_id(params[:visit_id]).id

    @relation = Visiter.create(user_id: user_id, visit_id: visit_id, confirmed: 0)
    @relation.save
    redirect_to visit_index_path
  end
end
