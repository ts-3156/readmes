# readmes

```sql
select distinct
  cast(Repository_Stars_Count as unsigned) stars_count,
  Repository_Name_with_Owner,
  Repository_Default_branch,
  Repository_Readme_filename
from
  projects
where
  Repository_URL != ''
  and Repository_Readme_filename != ''
  and Licenses = 'MIT'
  and Repository_Host_Type = 'GitHub'
having
  stars_count >= 100
order by
  stars_count desc
;
```
