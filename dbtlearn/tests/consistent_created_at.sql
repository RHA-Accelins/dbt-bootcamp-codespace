SELECT
    *
FROM
 {{ ref('fct_reviews') }} as r
 LEFT JOIN {{ ref('dim_listings_cleansed') }} as L ON r.listing_id = r.listing_id
 WHERE r.review_date < l.created_at