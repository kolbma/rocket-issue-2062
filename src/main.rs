#![deny(unsafe_code)]
#![deny(warnings)]
#![deny(clippy::all)]

use lazy_static::lazy_static;
use rocket::{get, launch, routes};
use std::collections::HashMap;

lazy_static! {
    static ref DATA: HashMap<usize, String> = {
        let mut m = HashMap::new();
        for &size in &[4096_usize, 4097, 8429, 8430, 10000, 40960, 409600, 4096000] {
            m.insert(size, " ".repeat(size));
        }
        m
    };
}

#[get("/<size>")]
fn size(size: usize) -> &'static str {
    DATA.get(&size).unwrap()
}

#[launch]
fn rocket() -> _ {
    let _ = DATA; // prepare DATA
    rocket::build().mount("/", routes![size])
}
