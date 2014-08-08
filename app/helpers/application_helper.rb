module ApplicationHelper
  def btn_link_to(name, path, *args)
    options = args.extract_options!
    html_class = "btn " + (options.delete(:class) || 'btn-default')
    icon = options.delete(:icon)

    if icon
      if icon.is_a? Hash
        icon_class = icon[:class]
        icon = icon[:icon]
      end
      span = content_tag("span", nil, class: "glyphicon glyphicon-#{icon} #{icon_class}") if icon

      if name && !name.empty?
        name = "#{span} #{name}".html_safe
      else
        name = "#{span}".html_safe
      end
    end

    link_to name, path, {class: html_class}.update(options)
  end
end
