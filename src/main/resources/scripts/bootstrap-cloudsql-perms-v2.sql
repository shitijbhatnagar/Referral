-- 1. Create new roles
CREATE ROLE referrals_readonly NOLOGIN;
CREATE ROLE referrals_readwrite NOLOGIN;

-- 2. Grant connect on database
GRANT CONNECT ON DATABASE referrals_db TO referrals_readwrite;
GRANT CONNECT ON DATABASE referrals_db TO referrals_readonly;

-- 3. Grant schema usage
GRANT USAGE ON SCHEMA public TO referrals_readonly;
GRANT USAGE ON SCHEMA public TO referrals_readwrite;

-- 4. Grant table privileges
GRANT SELECT ON ALL TABLES IN SCHEMA public TO referrals_readonly;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO referrals_readwrite;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO referrals_readwrite;

-- 5. Assign role to IAM user
GRANT referrals_readwrite TO "ref-gsa-v2@project-9627b595-2a5e-4fc1-9f1.iam";