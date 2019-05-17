program main
    implicit none
    integer :: readDN = 10
    integer :: writeDN = 11

    call openFiles(readDN, writeDN)
    call rwNumbers(readDN, writeDN)
end program main