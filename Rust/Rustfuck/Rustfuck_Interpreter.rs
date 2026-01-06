use std::io;
use std::thread;
use std::time::Duration;

fn main() {
    println!("Enter Brainfuck code:");
    let mut brainfuck = String::new();
    let mut tape = vec![0u8; 65535];
    let mut stack = vec![];
    let mut tapeptr = 0usize;
    let mut loop_ = 0;
    io::stdin().read_line(&mut brainfuck).expect("Failed to read line");
    let brainfuck = brainfuck.trim();
    let mut pointer = 0;
    while pointer < brainfuck.len() {
        let ch = brainfuck.chars().nth(pointer).unwrap();
        match ch {
            '+' => {
                tape[tapeptr] = tape[tapeptr].wrapping_add(1);
                pointer += 1;
            }
            '-' => {
                tape[tapeptr] = tape[tapeptr].wrapping_sub(1);
                pointer += 1;
            }
            '>' => {
                if tapeptr < 65534 {
                    tapeptr += 1;
                }
                pointer += 1;
            }
            '<' => {
                if tapeptr > 0 {
                    tapeptr -= 1;
                }
                pointer += 1;
            }
            '.' => {
                print!("{}", tape[tapeptr] as char);
                pointer += 1;
            }
            ',' => {
                let mut input = String::new();
                io::stdin().read_line(&mut input).expect("Failed to read input");
                tape[tapeptr] = input.chars().next().unwrap_or('\0') as u8;
                pointer += 1;
            }
            '[' => { // Loops are now Do-While rather than While-Do
                loop_ = pointer + 1;
                stack.push(loop_);
                pointer += 1;
                continue;
            }
            ']' => {
                if tape[tapeptr] != 0 {
                    pointer = *stack.last().unwrap();
                    continue;
                }
                else {
                    stack.pop();
                    pointer += 1;
                }
            }
            _ => pointer += 1,
        }
    }
    println!("\nExecution finished.");
    thread::sleep(Duration::from_secs(2));
}