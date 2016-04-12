/* 
- Upload CSVs of each table into database
- Columns must be in the same order as the database table
- Column names must match the column names in the database table
- COPY on postgres wiki: https://wiki.postgresql.org/wiki/COPY
- Would this process be different for updating already populated tables?
*/

-- table: cap_list
COPY cap_list FROM 'Y:/database/cap_list.csv' DELIMITERS ',' ENCODING 'UTF8' HEADER CSV;

-- table: pra
COPY pra FROM 'Y:/database/pra.csv' DELIMITERS ',' ENCODING 'UTF8' HEADER CSV;

-- table: spec_ops
COPY spec_ops FROM 'Y:/database/spec_ops.csv' DELIMITERS ',' ENCODING 'UTF8' HEADER CSV;

-- table: utilization
COPY utilization FROM 'Y:/database/utilization.csv' DELIMITERS ',' ENCODING 'UTF8' HEADER CSV;

-- table: client_track
COPY client_track FROM 'Y:/database/client_track.csv' DELIMITERS ',' NULL 'NA' ENCODING 'UTF8' HEADER CSV;