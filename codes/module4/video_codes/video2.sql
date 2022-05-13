/* Using where clause */
select * from invoice
where BillingCountry = 'Germany';

/*Multiple conditions */
select * from invoice 
where BillingCountry="Germany" and BillingCity="Berlin";

/*Find out how many invoices were from USA*/
select count(*) from Invoice
where BillingCountry="USA";