PROGRAM DateTime
    IMPLICIT NONE
    CHARACTER(LEN = 8) :: DateInfo ! ccyymmdd format
    CHARACTER(LEN = 4) :: Year, Month*2, Day*2
    CHARACTER(LEN = 10) :: TimeInfo, PrettyTime*12 ! hhmm.sss format
    CHARACTER(LEN = 2) :: Hour, Minute, Second*6

    CALL Date_AND_TIME(DateInfo, TimeInfo)

    Year = DateInfo(1:4) ! ccyy
    Month = DateInfo(5:6) ! mm
    Day = DateInfo(7:8) ! dd
    Hour = TimeInfo(1:2) ! hh
    Minute = TimeInfo(3:4) ! mm
    Second = TimeInfo(5:10) ! sss
    PrettyTime = Hour // ':' // Minute // ':' // Second

    ! For date
    WRITE(*, *) 'Date Information -> ', DateInfo
    WRITE(*, *) '            Year -> ', Year
    WRITE(*, *) '           Month -> ', Month
    WRITE(*, *) '             Day -> ', Day

    ! For time
    WRITE(*, *)
    WRITE(*, *) 'Time Information -> ', TimeInfo
    WRITE(*, *) ' Hour            -> ', Hour
    WRITE(*, *) ' Minute          -> ', Minute
    WRITE(*, *) ' Second          -> ', Second
    WRITE(*, *) ' Pretty Time     -> ', PrettyTime

END PROGRAM DateTime