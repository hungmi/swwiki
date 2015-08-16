module ListsHelper
  def render_sublists(head)
    if head.sublists.exists?
      head.sublists.each do |sub|
        return content_tag :li do
          link_to(sub.name, list_path(sub)) + content_tag(:ul, render_sublists(sub))
        end
      end
    else
      return
    end    
  end
end
