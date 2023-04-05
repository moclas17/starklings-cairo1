// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use array::ArrayTCloneImpl;
use array::SpanTrait;
use debug::PrintTrait;
use clone::Clone;



fn main() {
    let mut arr0 = ArrayTrait::new();
    let mut arr1 = fill_array(ref arr0);
    let mut arr1 = arr0.span().snapshot.clone();
    // Do not change the following line!
    arr0.print();
    arr1.append(88);
    arr1.print();
}

fn fill_array(ref arr: Array<felt252>)  {
    arr.append(22);
    arr.append(44);
    arr.append(66); 
} 