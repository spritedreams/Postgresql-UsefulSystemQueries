--get comment on table 
SELECT obj_description('schemaName.tableName'::regclass, 'pg_class');
