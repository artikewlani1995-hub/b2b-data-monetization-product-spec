-- 3. Privacy guardrail: any (category, region, buyer_size) cell with fewer than K distinct buyers is SUPPRESSED before release.
-- K = 20 here because the sample is tiny; the production threshold in the governance doc is 50.
SELECT category, region, buyer_size, COUNT(DISTINCT buyer_pid) AS buyers,
       CASE WHEN COUNT(DISTINCT buyer_pid) >= 20 THEN 'release' ELSE 'suppress' END AS action
FROM buyer_intent_events
WHERE consent_third_party_sharing = 1
GROUP BY category, region, buyer_size
ORDER BY buyers ASC
LIMIT 15;
