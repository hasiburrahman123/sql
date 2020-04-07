a.Answer:select title from course where dept_name= ’Comp. Sci.’and credits = 3;
b.Answer:select   distinct student.ID 
    from (student join takes using(ID)) join(instructor join teaches using(ID))using(course_id,sec_id,semester,year)where instructor.name= ’Einstein’;
c.select max(salary) from instructor;
d.select_ID,name from instructor where salary = (select max(salary)from instructor);
e.select course_id,sec_id,count(ID)from section natural join takes where semester= ’Autumn’and year= 2009 group by course_id,sec_id;
     OR,select course_id,sec_id , (select count(ID)from takes where takes.year=section.year and takes.semester = section.semester and takes.course_id = section.course_id and takes.section_id = section.section_id)from section where semester= ’Autumn’and year= 2009;
f.select max (enrollment) from (select   count(ID)as enrollment from section natural join takes where semester = ’Autumn’and year= 2009 group by course_id,sec_id);
g.with sec_enrollment as (select course_id,sec_id,count(ID)as enrollment from section natural join takes where semester= ’Autumn’and year= 2009 group by course_id,sec_id) select course_id,sec_id from  sec enrollment where enrollment = (select max(enrollment)from sec_enrollment);
