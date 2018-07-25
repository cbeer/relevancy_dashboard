module ApplicationHelper
  def position_change_style(position_change)
    return '🤢' if position_change.nil?
    return if position_change.zero?
    if position_change.positive?
      content_tag 'span', "⬆︎#{position_change}", style: 'color: #998ec3'
    else
      content_tag 'span', "⬇︎#{position_change}", style: 'color: #f1a340'
    end
  end
end
