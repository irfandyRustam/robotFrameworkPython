
*** Test Cases ***
#ForLoop1
#    FOR   ${i}    IN RANGE    1   10
#        log to console   ${i}
#        END

#ForLoop2
#    FOR   ${i}    IN     1    2    3    4    5    6    7    8
#        log to console    ${i}
#        END

#ForLoop3withList
#    @{items}    create list    1    2    3    4    5
#    FOR   ${i}    IN    @{items}
#        log to console    ${i}
#        END

#ForLoop4
#    FOR   ${i}    IN     john   david   smith   sam
#        log to console    ${i}
#        END

#ForLoop5
#    @{nameList}    create list    john   david   smith   sam
#    FOR   ${i}    IN    @{nameList}
#        log to console    ${i}
#        END

ForLoop6withExit
    @{items}    create list    1    2   3   4   5
    FOR   ${i}    IN    @{items}
        log to console    ${i}
        exit for loop if    ${i} == 3
        END