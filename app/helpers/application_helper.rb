module ApplicationHelper

  def nav_item(path)
    nav_action = path.gsub("/", "")
    title = nav_action.titleize
    klass = "selected" if action_name == nav_action

    content_tag :h2 do
      link_to title, path, class: klass
    end
  end

end
