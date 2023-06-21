; extends

; ----------------------------------------------------------------
; a general query injection

([
  (template_string)
  ] @sql
 (#match? @sql "(SELECT|select|INSERT|insert|UPDATE|update|DELETE|delete).+(FROM|from|INTO|into|VALUES|values|SET|set).*(WHERE|where|GROUP BY|group by)?")
 (#offset! @sql 0 1 0 -1))

; ----------------------------------------------------------------
; fallback keyword and comment based injection

([
  (template_string)
  ] @sql
 (#contains? @sql "-- sql" "--sql" "ADD CONSTRAINT" "ALTER TABLE" "ALTER COLUMN"
  "DATABASE" "FOREIGN KEY" "GROUP BY" "HAVING" "CREATE INDEX" "INSERT INTO"
  "NOT NULL" "PRIMARY KEY" "UPDATE SET" "TRUNCATE TABLE" "LEFT JOIN" "add constraint" "alter table" "alter column" "database" "foreign key" "group by" "having" "create index" "insert into"
  "not null" "primary key" "update set" "truncate table" "left join"
  "drop column" "drop table" "DROP COLUMN" "DROP TABLE")
 (#offset! @sql 0 1 0 -1))

; Other options to add:
;  "ADD" "ADD CONSTRAINT" "ALL" "ALTER" "AND" "ASC" "COLUMN" "CONSTRAINT" "CREATE" "DATABASE" "DELETE" "DESC" "DISTINCT" "DROP" "EXISTS" "FOREIGN KEY" "FROM" "JOIN" "GROUP BY" "HAVING" "IN" "INDEX" "INSERT INTO" "LIKE" "LIMIT" "NOT" "NOT NULL" "OR" "ORDER BY" "PRIMARY KEY" "SELECT" "SET" "TABLE" "TRUNCATE TABLE" "UNION" "UNIQUE" "UPDATE" "VALUES" "WHERE"
