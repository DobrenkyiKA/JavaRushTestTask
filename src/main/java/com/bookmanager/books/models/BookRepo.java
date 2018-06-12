package com.bookmanager.books.models;

import org.springframework.data.repository.PagingAndSortingRepository;

public interface BookRepo extends PagingAndSortingRepository<Book, Integer> {
}
