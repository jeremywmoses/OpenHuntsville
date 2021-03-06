module SharedRoutes
  include Pakyow::Routes

  fn :route_head do
    view.scope(:head).apply(request)
    view.scope(:main_menu).apply(request)
  end

  fn :edit_profile_check do
    if cookies[:people].nil? || cookies[:people] == 0
      redirect "/errors/401"
    end
  	people = People[cookies[:people]]
  	if people.nil?
      redirect "/errors/401"
  	end
    redirect_no_access = true
    if people.admin
      redirect_no_access = false
    elsif people.custom_url == request.path.split('/')[2]
      redirect_no_access = false
    elsif people.id.to_i == request.path.split('/')[2].to_i
      redirect_no_access = false
    end
    if redirect_no_access
  	  redirect "/errors/403"
  	end
  end

  fn :is_admin_check do
    if cookies[:people].nil? || cookies[:people] == 0
      redirect "/errors/404"
    end
    people = People[cookies[:people]]
    if people.nil?
      redirect "/errors/401"
    end
    redirect_no_access = true
    if people.admin
      redirect_no_access = false
    end
    if redirect_no_access
      redirect "/errors/403"
    end
  end

  fn :is_event_manager do
    if logged_in_user_is_group_admin_or_site_admin() == false
      redirect "/errors/403"
    end
  end

  fn :log_visit do
    # visitor_id = nil
    # unless cookies.nil? || cookies[:people].nil?
    #   visitor = People[cookies[:people]]
    #   unless visitor.nil?
    #     visitor_id = visitor.id
    #   end
    # end
    # pageview = Pageview.new()
    # pageview.visitor = visitor_id
    # pageview.page = request.path
    # pageview.save
  end

end
