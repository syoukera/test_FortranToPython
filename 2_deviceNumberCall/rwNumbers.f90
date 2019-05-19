subroutine rwNumbers(readDN, writeDN)
    implicit none
    real,dimension(30)::numbers
    real temp
    integer i, j
    integer readDN 
    integer writeDN

    ! read numbers
    do i = 1, 30
        read(readDN, *) numbers(i)
    end do
    close(10)

    ! baggle sort
    do i = 2, 30
        do j = 2, 32-i
            if (numbers(j) < numbers(j-1)) then
                temp = numbers(j)
                numbers(j) = numbers(j-1)
                numbers(j-1) = temp
            end if
        end do
    end do

    ! print numbers
    print *, "Sorted numbers is written in sortedNumbers.txt"
    do i=1, 30
        write(writeDN,*) numbers(i)
    end do
end subroutine

subroutine openFiles(readDN, writeDN)
    implicit none
    integer(4),intent(in) :: readDN
    integer(4),intent(in) :: writeDN

    print *, "Open files from fortran"
    open(readDN , file='numbers.txt', status='old')
    open(writeDN , file='sortedNumbers.txt', status='replace')
end subroutine

subroutine closeFiles(readDN, writeDN)
    implicit none
    integer readDN, writeDN
    close(readDN)
    close(writeDN)
end subroutine