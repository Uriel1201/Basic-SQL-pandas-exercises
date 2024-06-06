/*
15. Team Standings.

Writing a query to return the scores of
each team */ 

create table teams_p15 (team_id integer, team_name varchar (20));  
create table matches_p15 (match_id integer, host_team integer, guest_team integer, host_goals integer, guest_goals integer);

insert into teams_p15 with names as (
    select 1, 'New York'    from dual union all 
    select 2, 'Atlanta'     from dual union all 
    select 3, 'Chicago'     from dual union all 
    select 4, 'Toronto'     from dual union all 
    select 5, 'Los Angeles' from dual union all 
    select 6, 'Seattle'     from dual
) select * from names;

insert into matches_p15 with names as (
    select 1 m, 1, 2, 3, 0 from dual union all 
    select 2 m, 2, 3, 2, 4 from dual union all 
    select 3 m, 3, 4, 4, 3 from dual union all 
    select 4 m, 4, 5, 1, 1 from dual union all 
    select 5 m, 5, 6, 2, 1 from dual union all 
    select 6 m, 6, 1, 1, 2 from dual
) select * from names;
