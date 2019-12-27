-- problem 1
select CUSTNO,CUSTNAME,PHONE,CITY from CUSTOMER;
-- problem 2
select CUSTNO,CUSTNAME,PHONE,CITY from CUSTOMER
where STATE='CO';
-- problem 3
select * from EVENTREQUEST
where ESTCOST > 4000
order by DATEHELD;
-- problem 4
select EVENTNO,DATEHELD,ESTAUDIENCE from EVENTREQUEST
where (STATUS='Approved' AND ESTAUDIENCE > 9000) OR (STATUS='Pending' AND ESTAUDIENCE > 7000);
-- problem 5
select EVENTNO,DATEHELD,CUSTOMER.CUSTNO,CUSTNAME, CITY 
from EVENTREQUEST,CUSTOMER
WHERE City = 'Boulder' 
        AND DateHeld BETWEEN '2018-12-01'AND '2018-12-31'
        AND EVENTREQUEST.CUSTNO = CUSTOMER.CUSTNO;
-- problem 6
select PLANNO, AVG(NUMBERFLD) as AVGNUMRES
from EVENTPLANLINE
where LOCNO='L100' 
group by PLANNO;
-- problem 7
select PLANNO, LOCNO, count(LINENO) as NUMLINES, AVG(NUMBERFLD) as AVGNUMRES
from EVENTPLANLINE
where LOCNO='L100'
group by PLANNO
having count(LINENO) > 1;
