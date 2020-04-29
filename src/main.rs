extern crate reqwest;

use std::{thread, time};

// Hackers: The Spot Claim Request Story Plot
fn main() {
    let ten_millis = time::Duration::from_millis(8);
    let mut plot = plot_line();

    // Start story plot.
    println!("{}", plot.pop().unwrap());

    // Monitor if they know your in.
    loop {
        let client = reqwest::blocking::Client::new();

         let res = client.get("http://169.254.169.254/latest/meta-data/spot/termination-time").send();
         match res {
             Ok(res) => {
                 if res.status().as_u16() == 404 {
                     println!("{}", plot.pop().unwrap());
                     println!("{}", plot.pop().unwrap());
                     break;
                 }
             },
             Err(_) => {
                 println!(".");
             },
         }
    }

    // Begin getting the fuck out of Dodge.
    for _ in 1..15 {
        println!("{}", plot.pop().unwrap());
        thread::sleep(ten_millis);
    }
}

// The plot! Duh Duh Duhhhhhhhhh
fn plot_line() -> Vec<&'static str> {
    vec![
        "Narrator: Joey is hacking a spot instance. He gets in. Using GOD as a password. Nice data represent the machine's vast systems.",
        "Narrator: A devops engineer in the FBI, notices the intrusion. He gets on the phone.",
        "Joey: Okay, okay, we need proof that we were here. Right, uh...",
        "Narrator: Joey starts looking for something to download as proof he was there.",
        "Narrator: He selects a Garbage file and starts the download. His screen becomes a psychedelic mind trip.",
        "Narrator: The Plague glides in on a skateboard. Short and thin, bearded, about 35 but still trying to be a teenage anarchist, yet not consciously realizing he sold out that ideal years ago.",
        "DevOps Engineer: I've narrowed the activity to terminal 23.",
        "Plague: Let's echo 23, see what's up.",
        "Narrator: He sees what Joey is downloading. A file called \"Garbage\".",
        "Plague: Shit! Get me the switching control center. I need to trace a on going ssh session. They found the instance running analysis on people without their consent.",
        "Narrator: Joey is sneaking a cigarette while his computer downloads. There is a knock at the door. It's his mother.",
        "Joey: (whispering) Shit! (loudly, panicked) Uh yeah... hold on, mom. Hold on one second.",
        "Narrator: He puts out the cigarette and sprays the room with air freshener.",
        "Narrator: He unlocks the door. Joey's mom bursts in. He's still clambering into bed.",
        "Joey's Mom: Bed. Sleep. Now!",
        "Narrator: She turns off the computer. It wasn't finished downloading.",
        "Plague: Did you get a trace?",
        "DevOps Engineer: Yeah, we got him.",
        "Plague: (smiling) Good."
    ]
}
