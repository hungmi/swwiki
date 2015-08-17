module ListsHelper
  def render_sublists(head)
    if head.sublists.exists?

      content_tag :ul do
        head.sublists.map do |sub|
          concat(
            content_tag(:li, link_to("- #{sub.name}", list_path(sub)) + render_sublists(sub))
          )
        end
      end

    else
      return
    end
  end

end
