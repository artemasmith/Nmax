require_relative "n_max/version"

module NMax
  def self.show_n_max(lines, count)
    count = 1 if count.to_i <= 0
    list = []
    lines.each do |number|
      list << sanitize(number).to_i
      list = list.sort!.last(count) if list.length > count
    end
    list
  end

  def self.sanitize(number)
    number.sub(/\D/,'')
  end
end
