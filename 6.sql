

create table friends_p6 (user_id integer, friend integer);

create table likes_p6 (user_id integer, page_likes char);

insert into friends_p6 with names as (
    select 1, 2 from dual union all 
    select 1, 3 from dual union all 
    select 1, 4 from dual union all 
    select 2, 1 from dual union all 
    select 3, 1 from dual union all 
    select 3, 4 from dual union all 
    select 4, 1 from dual union all 
    select 4, 3 from dual
)
select * from names;

insert into likes_p6 with names as(
    select 1, 'A' from dual union all 
    select 1, 'B' from dual union all 
    select 1, 'C' from dual union all 
    select 2, 'A' from dual union all 
    select 3, 'B' from dual union all 
    select 3, 'C' from dual union all 
    select 4, 'B' from dual
)
select * from names;

select * from friends_p6;
select * from likes_p6;

create table Flikes_p6 as
    select f.user_id, f.friend, l.page_likes as friend_likes
           from friends_p6 f
           inner join likes_p6 l
           on f.friend = l.user_id;

select * from Flikes_p6;
