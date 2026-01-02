WITH CTE AS (
select
TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,

{{function2('STARTED_AT')}} AS DAY_TYPE,

{{function1('MONTH(TO_TIMESTAMP(STARTED_AT))')}}
from
{{ source('demo', 'bike') }}
where STARTED_AT != 'started_at' and STARTED_AT != '"started_at"'
)
select 
*
from CTE