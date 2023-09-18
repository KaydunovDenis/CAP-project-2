using {toadslop.bookshop as bookshop} from '../db/books';

@path : 'browse'
service CatalogService {
    entity Books as projection on bookshop.Books;
    entity Authors as projection on bookshop.Authors;
    entity BooksView as select from Books {
      title,
      stock
    };

}
