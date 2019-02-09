PROGRAM MakeChange
    IMPLICIT NONE
    CHARACTER(LEN = 50) :: TEST
    INTEGER :: quarters, dimes, nickels, pennies, initialValue, inputValue! variables
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    DO
        WRITE(*, *) 'Enter a value from 1 to 99 to make change of' ! prompt user for input
        READ(*, *) initialValue ! reads in value to inputValue
        IF(initialValue > 99 .OR. initialValue < 1) THEN ! if statement to ensure value is within range
            WRITE(*, *) "invalid input, please try again"
        ELSE
            EXIT ! exits general DO loop
        END IF
    END DO

    inputValue = initialValue
    quarters = findChange(inputValue, 25) !function to calculate change made
    inputValue = initialValue
    dimes = findChange(inputValue, 10)
    inputValue = initialValue
    nickels = findChange(inputValue, 5)
    inputValue = initialValue
    pennies = findChange(inputValue, 1)

    CALL printChange(quarters, dimes, nickels, pennies) ! prints values correctly


CONTAINS


    INTEGER FUNCTION findChange(initialValue, coinVal)
        IMPLICIT NONE
        INTEGER :: quarters, dimes, nickels, pennies, deductValue
        INTEGER :: initialValue, coinVal
        ! initialize variables
        quarters = 0
        dimes = 0
        nickels = 0
        pennies = 0
        deductValue = initialValue

        DO
            IF (deductValue /= 0) THEN
                IF (deductValue >= 25) THEN
                    quarters = quarters + 1
                    deductValue = deductValue - 25 ! take out value of coin
                    CYCLE ! restarts loop
                END IF
                IF (deductValue >= 10) THEN
                    dimes = dimes + 1
                    deductValue = deductValue - 10 ! take out value of coin
                    CYCLE ! restarts loop
                END IF
                IF (deductValue >= 5) THEN
                    nickels = nickels + 1
                    deductValue = deductValue - 5 ! take out value of coin
                    CYCLE ! restarts loop
                END IF
                IF (deductValue >= 1) THEN
                    pennies = pennies + 1
                    deductValue = deductValue - 1 ! take out value of coin
                END IF
            ELSE
                EXIT ! exit loop
            END IF
        END DO

        !statements to determine return value
        IF (coinVal == 25) THEN
            findChange = quarters
        END IF
        IF (coinVal == 10) THEN
            findChange = dimes
        END IF
        IF (coinVal == 5) THEN
            findChange = nickels
        END IF
        IF (coinVal == 1) THEN
            findChange = pennies
        END IF

        RETURN
    END FUNCTION findChange


    SUBROUTINE printChange(quarters, dimes, nickels, pennies)
        IMPLICIT NONE
        CHARACTER :: QString, Dstring, NString, PString, tempString
        CHARACTER(LEN = 50) :: totalString
        INTEGER, INTENT(IN) :: quarters, dimes, nickels, pennies
        QString = " Quarter "
        Dstring = " Dime "
        NString = " Nickel "
        PString = " Penny "

        !sequence of if statments to concatenate strings to do non-advancing write
        IF(quarters /= 0) THEN
            WRITE(*, "(I1, A8)", ADVANCE = 'NO') quarters, 'Quarter'
            !read(*,*) quarters
        END IF
        IF(dimes /= 0) THEN
            WRITE(*, "(I2, A5)", ADVANCE = 'NO') dimes, 'Dime'
        END IF
        IF (nickels /= 0) THEN
            WRITE(*, "(I2, A7)", ADVANCE = 'NO') nickels, 'Nickel'
        END IF
        IF (pennies /= 0) THEN
            WRITE(*, "(I2, A6)", ADVANCE = 'NO') pennies, 'Penny'
        END IF
        WRITE(*, *)
    END SUBROUTINE printChange


END PROGRAM MakeChange
