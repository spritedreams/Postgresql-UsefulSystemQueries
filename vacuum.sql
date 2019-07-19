--check tables needing vacuum
SELECT
    relname as table,
    n_tup_ins as inserts,
    n_tup_upd as updates,
    n_tup_del as deletes,
    n_live_tup as live_tuples,
    n_dead_tup as dead_tuples
FROM pg_stat_user_tables
WHERE
    schemaname = 'public'
ORDER BY dead_tuples desc;
