def sorter_keys(list)
  list.keys.map(&:to_s).sort_by(&:length)
end