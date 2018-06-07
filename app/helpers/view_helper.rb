module ViewHelper

  def show_url(user, url)
    content_tag(:div, class: 'card card-default mb-5') do
      content_tag(:div, class: 'card-header') do
         content_tag(:p, "Your original URL was: #{url.original_url}")
      end +
        content_tag(:div, class: 'card-body') do
          concat content_tag(:b, "Your shortened URL is: #{request.base_url}/#{url.short_url}")
          concat link_to('share', user_share_path(user.id, share_url: url.short_url), class: 'btn btn-primary ml-1')
        end
    end
  end

end