
select * from [dbo].[Fact_Health_Inc_Data]      /*Fact table */

select distinct category_code,category_Name into dbo.DimCategory  from [dbo].[Health]   /* Created DimCategory table */

select distinct surgery_Code,Surgery into dbo.DimSurgery from [dbo].[Health]       /*Created DimSurgery table*/

select distinct HOSP_TYPE,HOSP_NAME into dbo.DimHospType from [dbo].[Health]       /*Created DimHospType table*/

select distinct DISTRICT_ID into dbo.DimLoc from [dbo].[Health]                     /*Created DimLocation table*/

Alter table dbo.DimLoc  add District_Name varchar(20)

update dbo.DimLoc  set District_Name = 'Anantapur'
where district_ID= 'ANA'

select distinct [Gender Code] into dbo.DimGender  from [dbo].[Health]           /*Created DimGender table*/

Alter table dbo.DimGender   add gender char(10)                           /*Added  gender column */

update dbo.DimLoc  set gender= 'Female_Child'                             /*Inserted the values in gender column */
where Gender Code = 'FC'










