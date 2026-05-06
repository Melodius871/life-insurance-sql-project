-- Total policies
SELECT COUNT(*) AS total_policies
FROM policies;

-- Premiums by policy
SELECT policy_id, SUM(amount) AS total_premiums
FROM premiums
GROUP BY policy_id;

-- Claims by policy
SELECT policy_id, SUM(claim_amount) AS total_claims
FROM claims
GROUP BY policy_id;

-- Loss ratio by policy (key actuarial metric)
SELECT 
    p.policy_id,
    SUM(pr.amount) AS total_premiums,
    COALESCE(SUM(c.claim_amount), 0) AS total_claims,
    COALESCE(SUM(c.claim_amount), 0) * 1.0 / SUM(pr.amount) AS loss_ratio
FROM policies p
LEFT JOIN premiums pr ON p.policy_id = pr.policy_id
LEFT JOIN claims c ON p.policy_id = c.policy_id
GROUP BY p.policy_id;

-- Portfolio status breakdown
SELECT status, COUNT(*) AS policy_count
FROM policies
GROUP BY status;
