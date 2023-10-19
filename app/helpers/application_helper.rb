module ApplicationHelper
  def menu
    nav = ''
    if controller_name == 'categories' && action_name == 'index'
      nav << "<li>
                #{link_to 'GeldSpar', categories_path, class: 'no-underline'}
              </li>"
      nav << "<li>
                <span class='family-head'>HOME</span>
              </li>"
    end
    if controller_name == 'categories' && action_name == 'new'
      nav << "<li class='material-symbols-outlined'>
                #{link_to 'arrow_back', categories_path, class: 'no-underline'}
              </li>"
      nav << "<li>
                <span class='family-head'>ADD CATEGORY</span>
              </li>"
    end
    menu_links(nav)
  end

  def menu_links(nav)
    if controller_name == 'movements' && action_name == 'index'
      nav << "<li class='material-symbols-outlined'>
                #{link_to 'arrow_back', categories_path, class: 'no-underline'}
              </li>"
      nav << "<li>
                <span class='family-head'>MOVEMENTS</span>
              </li>"
    end
    if controller_name == 'movements' && action_name == 'new'
      nav << "<li class='material-symbols-outlined'>
                #{link_to 'arrow_back', category_movements_path(params[:category_id]), class: 'no-underline'}
              </li>"
      nav << "<li>
                <span class='family-head'>ADD MOVEMENT</span>
              </li>"
    end
    nav << "<li>
              #{button_to 'Sign Out', destroy_user_session_path, method: :delete, class: 'link-seeming font-nav'}
            </li>"
    nav.html_safe
  end

  def category_total(category)
    category.category_movements.includes(:movements).sum { |movement| movement.movements.amount }
  end
end
