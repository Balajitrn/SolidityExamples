pragma solidity ^0.8.0;//Version of Compiler

contract Test { // Name of Contract
    struct Book{
        string Title;
        string author;
        uint book_id;
        string publisher;
    }
    Book book; // Taking Object of Structure Book
    function setBook() public{
        book = Book("Learn Solidity","Dr Ishu Sharma",101,"Emerald" );
    }
    function getBookId() public view returns(uint)
    {
        return book.book_id;
    }
    function getBookTitle() public view returns(string memory)
    {
        return book.Title;
    }
    function getBookPublisher() public view returns(string memory)
    {
        return book.publisher;
    }

}