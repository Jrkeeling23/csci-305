PROGRAM MakeChange
    IMPLICIT NONE
    INTEGER :: quarters, dimes, nickels, pennies, initialValue, inputValue ! variables
    DO
        WRITE(*, *) 'Enter a value from 1 to 99 to make change of' ! prompt user for input
        READ(*, *) inputValue ! reads in value to inputValue
        IF(inputValue > 99 .OR. inputValue < 1) THEN ! if statement to ensure value is within range
            WRITE(*, *) "invalid input, please try again"
        ELSE
            EXIT ! exits general DO loop
        END IF
    END DO

    DO
        IF (inputValue /= 0) THEN
            IF (inputValue >= 25) THEN
                quarters = quarters + 1
                inputValue = inputValue - 25 ! take out value of coin
                CYCLE ! restarts loop
            END IF
            IF (inputValue >= 10) THEN
                dimes = dimes + 1
                inputValue = inputValue - 10 ! take out value of coin
                CYCLE ! restarts loop
            END IF
            IF (inputValue >= 5) THEN
                nickels = nickels + 1
                inputValue = inputValue - 5 ! take out value of coin
                CYCLE ! restarts loop
            END IF
            IF (inputValue >= 1) THEN
                pennies = pennies + 1
                inputValue = inputValue - 1 ! take out value of coin
            END IF
        ELSE
            EXIT ! exit loop
        END IF
    END DO

    IF(quarters /= 0) THEN
        WRITE(*,*) ' Quarter ' , quarters
    END IF
    IF(dimes /= 0) THEN
        WRITE(*,*) ' Dime ' ,dimes
    END IF
    IF (nickels /= 0) THEN
        WRITE(*,*) ' Nickel ', nickels
    END IF
    IF (pennies /= 0) THEN
        WRITE(*,*) ' Penny ' , pennies
    END IF

END PROGRAM MakeChange