namespace toadslop.bookshop;

entity Books {
  key id : Integer;
  title  : String(100);
  descr  : String(1000);
  author : String(100);
  genre  : String(100);
  stock  : Integer;
  authors : Association to Authors;
}

entity Authors {
  key id : Integer;
  name   : String(111);
  books  : Association to many Books on books.authors = $self;
}