module ApplicationHelper
  def sortable(column, title = nil, table = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, sort: column, direction: direction, table: table  
  end
end
