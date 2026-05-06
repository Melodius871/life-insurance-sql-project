-- 1. Total number of policies
SELECT COUNT(*) AS total_policies
FROM policies;

-- 2. Premiums collected per policy
SELECT 
    policy_id,
    SUM(amount) AS total_premiums
FROM premiums
GROUP BY policy_id
ORDER BY total_premiums DESC;

-- 3. Claims paid per policy
SELECT 
    policy_id,
    SUM(claim_amount) AS total_claims
FROM claims
GROUP BY policy_id;

-- 4. Loss ratio by policy (KEY INSURANCE METRIC)
SELECT 
    p.policy_id,
    SUM(pr.amount) AS total_premiums,
    COALESCE(SUM(c.claim_amount), 0) AS total_claims,
    COALESCE(SUM(c.claim_amount), 0) * 1.0 / SUM(pr.amount) AS loss_ratio
FROM policies p
LEFT JOIN premiums pr ON p.policy_id = pr.policy_id
LEFT JOIN claims c ON p.policy_id = c.policy_id
GROUP BY p.policy_id;

-- 5. Policy status breakdown (active vs lapsed)
SELECT 
    status,
    COUNT(*) AS policy_count
FROM policies
GROUP BY status;

-- 6. Portfolio total premiums vs claims (high-level view)
SELECT 
    (SELECT SUM(amount) FROM premiums) AS total_premiums,
    (SELECT SUM(claim_amount) FROM claims) AS total_claims;
