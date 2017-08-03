SET ARRAYSIZE 500
SET FLUSH OFF
SET LINESIZE 32767
SET PAGESIZE 0
SET SERVEROUTPUT OFF
SET FEEDBACK OFF
SET TERMOUT OFF
SET TRIMSPOOL ON
SET VERIFY OFF
SET HEADING ON
SET UNDERLINE OFF
WHENEVER OSERROR EXIT 2;
WHENEVER SQLERROR EXIT 1;
ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD HH24:MI:SS';

SPOOL ./csv/&2/&1._part.lst

select PARTITION_NAME from USER_TAB_PARTITIONS where table_name='&1' order by PARTITION_NAME desc;

SPOOL OFF
QUIT

