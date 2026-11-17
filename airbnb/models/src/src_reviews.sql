WITH raw_reviews as (
Select * From AIRBNB.RAW.RAW_REVIEWS
)
Select  listing_id, 
        date as review_date,
        reviewer_name,
        sentiment as review_sentiment,
        comments as review_text
    From raw_reviews