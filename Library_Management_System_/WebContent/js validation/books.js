function validate() {
	var book_no=document.books_form.book_no.value;  
	var book_name=document.books_form.book_name.value;
	var author = document.books_form.author.value;
	var publisher = document.books_form.publisher.value;
	var edition = document.books_form.edition.value;
	var copies = document.books_form.copies.value;
	var cost = document.books_form.cost.value;
	
	if(book_no=="")
		{
		alert("enter book number");
		return false;
		
		}
	if(book_name=="")
	{
	alert("enter book name");
	return false;
	
		}
	
	if(author=="")
	{
	alert("enter Author name");
	return false;
	
	}
	
	if(publisher=="")
	{
	alert("enter Publisher name");
	return false;
	
}
	if(edition=="")
	{
	alert("enter Edition name");
	return false;
	}
	
	if(copies=="")
	{
	alert("enter Copies name");
	return false;
}
	if(cost=="")
	{
	alert("enter Cost of the book");
	return false;
	}
	}
