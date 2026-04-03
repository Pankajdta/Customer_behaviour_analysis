use customer_behaviour

select gender,sum(purchase_amount) as revenue from cleaned_customer_data group by gender

select *from cleaned_customer_data

select customer_id ,purchase_amount from cleaned_customer_data 
where discount_applied ="YES" and 
purchase_amount>=(select avg(purchase_amount) from cleaned_customer_data) 

select item_purchased ,ROUND(avg(review_rating),2) as average_review_rate from cleaned_customer_data  group by item_purchased order by avg(review_rating) desc limit 5

select shipping_type , round(avg(purchase_amount),2) from cleaned_customer_data
 where shipping_type in ('Standard','Express')
  group by shipping_type 
  
  select subscription_status ,count(customer_id) as total_customer,round(avg(purchase_amount),2)
  as avg_spend,round(sum(purchase_amount),2) as total_revenue 
  from cleaned_customer_data group by subscription_status order by total_customer,avg_spend desc;
  
  select item_purchased ,round(100*sum(case when discount_applied='YES' then 1 else 0 end)/count(*),2) as discount_rate
  from cleaned_customer_data
  group by item_purchased
  order by discount_rate desc
  limit 5;
  
  
  
with customer_type as
(select customer_id ,previous_purchases ,
CASE
    when previous_purchases =1 then 'New' 
    when previous_purchases between 2 and 10 then 'Returning'
    else 'Loyal'
    end as customer_segment
    from cleaned_customer_data)
    select customer_segment ,count(*) as "Number of customers"
    from customer_type
    group by customer_segment
    
   with item_counts as
   (select category,item_purchased ,count(customer_id) as total_orders ,
   row_number() over (partition by category order by count(customer_id) desc) as item_rank 
   from cleaned_customer_data
   group by category,item_purchased)
   select item_rank,category,item_purchased,total_orders from item_counts
   where item_rank<=3;
   
   
select subscription_status,count(customer_id) as repeat_buyers 
from cleaned_customer_data where previous_purchases>5 group by subscription_status
 
 
select sum(purchase_amount),age_group from cleaned_customer_data group by age_group



   