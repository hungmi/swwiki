module ListsHelper
  def render_sublists(head)
    if head.sublists.exists?

      content_tag :ul do
        head.sublists.map do |sub|
          selected = 'active' if sub.id.to_s == params[:id]
          concat(
            content_tag(:li, link_to("- #{sub.name}", list_path(sub), class: selected) + render_sublists(sub))
          )
        end
      end

    end
  end
end
