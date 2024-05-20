# 現在のディレクトリを取得
def load_all_files(dir_name)
  current_directory = dir_name
  # current_directory = File.dirname(__FILE__)

  # 現在のディレクトリ配下のすべての.rbファイルを取得して読み込む
  Dir.glob(File.join(current_directory, '*.rb')).each do |file|
    # main.rb自身を除外
    # util.rbを読み込まない
    next if file == File.join(current_directory, 'main.rb') || file == File.join(current_directory, 'lib', 'util.rb')

    require file
  end
end

def answer_check(expect, result)
  if expect == result
    puts "正解"
  else
    puts "不正解 : #{result} が出力されました。"
  end
end