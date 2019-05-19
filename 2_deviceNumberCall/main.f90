subroutine main()
    implicit none
    integer :: readDN = 10
    integer :: writeDN = 11

    call openFiles(readDN, writeDN)
    call rwNumbers(readDN, writeDN)
    call closeFiles(readDN, writeDN)
end subroutine main