/* Using group by clause */
select * from Invoice; 
/* find total of all the invoices for each country */
select BillingCountry, sum(Total) from Invoice
group by BillingCountry;
/* Use alias for aggregated column */
select BillingCountry, sum(Total) as total_invoice from Invoice
group by BillingCountry;
/* One can also sort this output*/
select BillingCountry, sum(Total) as total_invoice from Invoice
group by BillingCountry
order by total_invoice desc;
/* We can further filter the results, need data for USA, Canada and Brazil*/
select BillingCountry, sum(Total) as total_invoice from Invoice
group by BillingCountry
having BillingCountry in ("USA", "Canada","Brazil")
order by total_invoice desc;
/* Multiple aggregations possible */
select BillingCountry, sum(Total) as total_invoice, avg(Total) as avg_invoice_value
from Invoice
group by BillingCountry
having BillingCountry in ("USA", "Canada","Brazil")
order by total_invoice desc;
/*Multiple groupings are also possible*/
select BillingCountry,BillingCity, sum(Total) as total_invoice, avg(Total) as avg_invoice_value
from Invoice
group by BillingCountry,BillingCity
having BillingCountry in ("USA", "Canada","Brazil")
order by total_invoice desc;
/*Sort by country and then total_invoice*/
select BillingCountry,BillingCity, sum(Total) as total_invoice, avg(Total) as avg_invoice_value
from Invoice
group by BillingCountry,BillingCity
having BillingCountry in ("USA", "Canada","Brazil")
order by BillingCountry, total_invoice desc;