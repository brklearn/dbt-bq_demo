
    SELECT
        customer_id,
        CONCAT(first_name, ' ',last_name) as customer_name,
        email as email_address,
        address as mailing_address
    FROM dbt_bkalakkadu.Customer