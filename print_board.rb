
def print_board(rows)

  rows = rows.map do |row|
    row = row.map { |element| element.nil? ? '    ' : element }
    row.join('|')
  end

  rows_line = rows.join("\n" + ('----.' * 16)[0..-2] + "\n")

  box = TTY::Box.frame(title: {bottom_right: "author:jing, v1.0"}) do
    puts "     0    1    2    3    4    5    6    7    8    9   10   11   12   13   14   15".colorize(:green)
    rows_line.to_s
  end

  final_box = []
  box.split("\n").each_with_index do |row, index|
    if index.odd?
      final_box << (((index - 1) / 2).to_s.rjust(2, ' ').colorize(:green) + ' ' + row)
    else
      final_box << (''.rjust(2, ' ') + ' ' + row)
    end
  end
  puts final_box.join("\n")
end
