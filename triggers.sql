--look for missing trigger by name 
with tr as (
select relname as table_with_trigger
from pg_class
where pg_class.oid in (
    select tgrelid
    from pg_trigger
    where tgname ilike 'a_min_update%'
)
), t as (
    select tablename from pg_tables where tableowner='sw_admin' and schemaname='public'
)
select
    tr.*,
    t.*
from tr full outer join t on tr.table_with_trigger = t.tablename
order by 1;
