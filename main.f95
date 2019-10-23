program main
    implicit none
    integer :: input, tmp, input_copy
    integer :: i, j, m
    logical :: at_least_one_detected = .false.
    integer, dimension(:), allocatable :: array

    write(*,"(A,$)") "Put number to decompose: "
    read(*,*) input

    if (input <= 0) stop "Wrong input"

    write(*,*) "Decomposition result is: "


    allocate(array(input))

    do i=1,input
        array(i) = i
    end do


    do m=2,input
        if (array(m)/=0) then
            do j=2*m,input,m
                array(j) = 0
            end do
        end if
    end do

    tmp = input
    do i = 2, (input)
        if (array(i) /= 0) then
            tmp = array(i)
            input_copy = input
            do while (mod(input_copy,tmp) == 0)
                    write(*,*) tmp
                    input_copy = input_copy / tmp
                    at_least_one_detected = .true.
            end do
        end if
    end do

    if (at_least_one_detected .eqv. .false.) write(*,*) "No prime dividers detected"
end
