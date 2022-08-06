*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup     Connect To Database  pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   127.0.0.1
${DBPort}   3306

*** Test Cases ***
#Create Person Table
#    ${output}=  execute sql string    Create table person(id integer, first_name varchar(20), last_name varchar(20));
#    log to console    ${output}
#    should be equal as strings    ${output}     None
#
#Inserting Data in Person Table
#    # Single Record
##    ${output}=  execute sql string   Insert into person values(101, "John", "Canady");
#
#    # Multiple Records
#    ${output}=  execute sql script    ./TestData/mydb_person_insertData.sql
#    log to console    ${output}
#    should be equal as strings    ${output}     None

Check David Record Present in Person Table
    check if exists in database    select id from mydb.person where first_name = "David";

Check Jio Record Present in Person Table
    check if not exists in database    select id from mydb.person where first_name = "Jio";

Check Person Table Exists in mydb Database
    table must exist    person

Verify Row Count is Zero
    row count is 0    select * from person where first_name = 'XYZ';

Verify Row Count is Equal to Some Value
    row count is equal to x    select * from person where first_name = 'David';     1

Verify Row Count is Greater than Some Value
    row count is greater than x    select * from person where first_name = 'David';     0

Verify Row Count is Less than Some Value
    row count is less than x    select * from person where first_name = 'David';     5

Update Record in Person Table
    ${output}=  execute sql string   update mydb.person set first_name = "Jio" where id=104;
    log to console    ${output}
    should be equal as strings    ${output}     None

Retrieve Records from Person Table
    @{queryResults}=    query       select * from mydb.person;
    log to console  many @{queryResults}

Delete Records from Person Table
    ${output}=  execute sql string    delete from mydb.person;
    log to console    ${output}
    should be equal as strings    ${output}     None