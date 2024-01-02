let () = 
    print_endline Hello.(string_of_string_list world);;

    let res = Hello.last [1;2;3];;
    match res with
    | Some x -> Printf.printf "Last element is %d\n" x
    | None -> print_endline "Could not find end"

    let last_two = Hello.last_two [1;2;3];;
    match last_two with
    | Some (x,y) -> Printf.printf "last two are [%d, %d]\n" x y
    | None -> print_endline "Could not find last two elements"


    let k = 2
    let arr = [1;2;3]
    let arr2 = [3;2;3]
    let nth_element = Hello.at 2 arr;;
    match nth_element with
    | Some x -> Printf.printf "Nth element is %d\n" x
    | None -> Printf.printf "Could not find the %d element"  k

    let lenght_of_list = Hello.length arr;;
    Printf.printf "lenght of list is %d\n" lenght_of_list

    let is_palindrome = Hello.is_palindrome arr2;;
    Printf.printf " the list is %B\n" is_palindrome

    let dups = [1;1;1;2;2;3]
    let noDups = Hello.removeDuplicates dups;;
    List.iter(fun x -> print_endline (string_of_int x)) noDups



