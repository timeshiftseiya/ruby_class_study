## LV1
- 基礎的なクラスの定義
- インスタンス変数の定義
- publicメソッドの定義
- accessorメソッドの定義
```rb
class Student
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "こんにちは、私は#{name}で、#{age}歳です。"
  end
end
```

## LV2
- クラスの中で保持している他のクラスのインスタンスにメソッドを呼び出す
- 引数でインスタンスを受け取る

```rb
class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def list_books
    @books.map do |book|
      [book.title, book.author]
    end
  end
end

class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end
```
