/* date functions */
select * from Invoice
limit 5;

select InvoiceDate from Invoice
limit 5;

select date(InvoiceDate) from Invoice
limit 5;

/* use strftime to extract parts of date and weekday information */
select strftime("%Y",InvoiceDate), InvoiceDate from Invoice
limit 5;

/* day */
select strftime("%d",InvoiceDate), InvoiceDate from Invoice
limit 5;

/* month */
select strftime("%m",InvoiceDate), InvoiceDate from Invoice
limit 5;

/*day of week: 0-6, sunday =0 */
select strftime("%w",InvoiceDate), InvoiceDate from Invoice
limit 5;

/* find duration */
select julianday(InvoiceDate), InvoiceDate from Invoice
limit 5;

select julianday(InvoiceDate), 
date("2009-01-02") as pivot_date,
julianday(InvoiceDate)-julianday("2009-01-02") as diff, 
InvoiceDate from Invoice
limit 5;

/*finiding system time */
select date("now");

select datetime("now");

select datetime("now","localtime")

select datetime("now","utc")