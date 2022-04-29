module PostsHelper
  def render_html_with_lazyload(html)
    content_html = Nokogiri::HTML(html).css("body")
    content_html.css("img").each { |img| to_lazy_image!(img) }

    content_html.inner_html.html_safe
  end

  private

  def to_lazy_image!(img)
    img["data-original"] = img["src"]
    img["src"] = loading_image_path unless browser.ie?
    img["class"] = img["class"].to_s.split.push(:lazy).join(" ")
  end

  def loading_image_path
    @loading_image_path ||= image_path("lazyload/loading.gif")
  end
end
