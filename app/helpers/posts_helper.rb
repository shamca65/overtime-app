module PostsHelper

  def status_label

  end

  private

  def status_span_generator status
    case status
      when 'submitted'
        content_tag(:span, status.titleize, class: 'label label-primary')

      when 'approved'
        content_tag(:span, status.titleize, class: 'label label-success')

      when 'rejected'
        content_tag(:span, status.titleize, class: 'label label-danger')
    end
  end
end
