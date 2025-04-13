SELECT 
    co.order_id,
    c.first_name,
    c.last_name,
    sm.shipping_type,
    os.status_name AS Order_Status,
    co.order_date
FROM 
    customer_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN shipping_method sm ON co.shipping_method_id = sm.shipping_method_id
JOIN order_status os ON co.order_status_id = os.order_status_id;