# SQLMurderMystery

In this project I'm solving the [SQL Murder Mystery](https://mystery.knightlab.com/)

## Description
A crime has taken place and the detective needs my help. The detective gave me the crime scene report, but I somehow lost it. I vaguely remember that the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City​. I should start by retrieving the corresponding crime scene report from the police department’s database.

## Database schema:
![Database schema](db_schema.png)

## Retrieving the crime scene report
Since I remember that the crime was a `​murder`​ that occurred sometime on `​Jan.15, 2018`​ and that it took place in `​SQL City`, I'm going to search the **crime_scene_report** table to retrieve the discription of the crime with the following [query](queries/crime_scene_report_description.sql).

```sql
select description
from crime_scene_report   
where date=20180115 and city='SQL City' and type='murder'
```
Output:
```
Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".
```
