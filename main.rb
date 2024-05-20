# NOTE: 変更しないでください 全てのファイルを読み込んでいます
require_relative 'lib/util'
load_all_files(File.dirname(__FILE__))
# ここまで
# 必要なクラスを定義するファイルは都度作成してください

# LV1
student = Student.new('田中', 20)
answer_check('田中', student.name)

# LV2
library = Library.new
library.add_book(Book.new("Ruby入門", "高橋一郎"))
library.add_book(Book.new("Railsガイド", "佐藤二郎"))
answer_check(library.list_books, [["Ruby入門", "高橋一郎"], ["Railsガイド", "佐藤二郎"]])