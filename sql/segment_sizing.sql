-- 2. Sizing a consented audience segment (SEG01-style): distinct buyers showing repeated high-intent actions in a category.
-- Only consented, pseudonymous ids are counted. Nothing here exposes who the buyers are.
WITH recent AS (
  SELECT buyer_pid, category,
         SUM(CASE WHEN event_type IN ('enquiry_sent','call_back_requested','catalog_download') THEN 1 ELSE 0 END) AS intent_events,
         MAX(gst_verified_buyer) AS verified
  FROM buyer_intent_events
  WHERE consent_third_party_sharing = 1
    AND ts >= date((SELECT MAX(ts) FROM buyer_intent_events), '-60 days')
  GROUP BY buyer_pid, category
)
SELECT category,
       COUNT(DISTINCT buyer_pid)                                          AS high_intent_buyers,
       COUNT(DISTINCT CASE WHEN verified = 1 THEN buyer_pid END)          AS of_which_verified
FROM recent
WHERE intent_events >= 2
GROUP BY category
ORDER BY high_intent_buyers DESC;
