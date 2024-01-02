let string_list_pp = [%show : string list]
let string_of_string_list  = Format.asprintf "@[%a@]" string_list_pp
let world = String.split_on_char ' ' "Hello using an opam library"

let rec last = function
    | [] -> None
    | [x] -> Some x
    | _ :: t -> last t

let rec last_two = function
    | [] | [_]  -> None
    | [x;y] -> Some (x,y)
    | _ :: t -> last_two t

let rec at k =  function
    | [] -> None
    | h :: t -> if k = 0 then Some h else at (k-1) t

let length l =
    let rec inner_length acc l = 
        match l with
        | [] -> acc
        | _ :: t -> inner_length (acc+1) t
    in
    inner_length 0 l;;

let reverse list = 
    let rec aux acc = function
        | [] -> None
        | h::t -> aux (h::acc) t

    in
    aux [] list;;


let is_palindrome list = 
    list = List.rev list;;

let removeDuplicates a =
    let rec aux acc prev l = 
        match l with
         | [] -> List.rev acc
         | h::t-> if h = prev then aux acc h t else aux (h::acc) h t
    in
    aux [] 0 a;;
