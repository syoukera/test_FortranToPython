subroutine test()
    implicit none
    real,dimension(30)::numbers
    real temp
    integer i, j

    open(10 , file='numbers.txt', status='old')
    open(11 , file='sortedNumbers.txt', status='replace')

    ! read numbers
    do i = 1, 30
        read(10, *) numbers(i)
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
        write(11,*) numbers(i)
    end do
end subroutine test