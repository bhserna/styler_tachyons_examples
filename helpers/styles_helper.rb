require "styler"

module StylesHelper
  def styles
    @styles ||= Styler.new do
      style :bg_color, %w(bg-washed-blue)
      style :border, %w(ba bw2 b--light-blue)
      style :border_bottom, %w(bb bw2 b--light-blue)
      style :link, %w(blue dib dim no-underline)

      style :html_tag, %w()
      style :body_tag, ["avenir", "sans-serif", bg_color]
      style :container, ["h-100", "mw8", "center", "bg-white", border, "ma3"]

      collection :header do
        style :container, ["ph3 mv4 tc mw8 center"]
        style :title, ["mv2", "lh-title"]
        style :description, ["lh-copy", "f4"]
      end

      collection :example do
        style :back, [link, "ph3", "pt3"]
        style :header, ["ph3", border_bottom]
        style :preview, [border_bottom, "overflow-auto"]
        style :code_header, [header]
        style :code, %w()
      end

      collection :menu do
        style :header, ["ph3", border_bottom]
        style :list, ["pl4", "pv3", "ma0", "lh-copy"]
        style :list_item, []
        style :sub_list, ["pl3", "pb3", "ma0"]
        style :example_link, [link, ]
      end
    end
  end
end
