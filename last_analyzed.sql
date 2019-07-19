select 
    relname, 
    n_dead_tup, 
    n_tup_ins, 
    n_tup_upd, 
    n_tup_del, 
    last_autoanalyze, 
    autoanalyze_count 
from pg_stat_user_tables 
where last_autoanalyze is not null 
order by last_autoanalyze desc;
