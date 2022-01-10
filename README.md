Test benchmark code from issue https://github.com/SergioBenitez/Rocket/issues/2062

## Start the Rocket server

`cargo run --release`

## Run the httperf.sh benchmark

`./httperf.sh`

## Check the output

    b=4096 n=1 Request rate: 1971.9 req/s (0.5 ms/req)
    b=4096 n=10 Request rate: 3619.2 req/s (0.3 ms/req)
    b=4096 n=100 Request rate: 4022.9 req/s (0.2 ms/req)
    b=4097 n=1 Request rate: 991.1 req/s (1.0 ms/req)
    b=4097 n=10 Request rate: 24.9 req/s (40.1 ms/req)
    b=4097 n=100 Request rate: 23.0 req/s (43.6 ms/req)
    b=8429 n=1 Request rate: 1050.4 req/s (1.0 ms/req)
    b=8429 n=10 Request rate: 25.3 req/s (39.6 ms/req)
    b=8429 n=100 Request rate: 23.0 req/s (43.6 ms/req)
    b=8430 n=1 Request rate: 876.4 req/s (1.1 ms/req)
    b=8430 n=10 Request rate: 209.8 req/s (4.8 ms/req)
    b=8430 n=100 Request rate: 468.8 req/s (2.1 ms/req)
    b=10000 n=1 Request rate: 1522.4 req/s (0.7 ms/req)
    b=10000 n=10 Request rate: 207.0 req/s (4.8 ms/req)
    b=10000 n=100 Request rate: 318.6 req/s (3.1 ms/req)
    b=40960 n=1 Request rate: 1083.5 req/s (0.9 ms/req)
    b=40960 n=10 Request rate: 195.6 req/s (5.1 ms/req)
    b=40960 n=100 Request rate: 556.3 req/s (1.8 ms/req)
    b=409600 n=1 Request rate: 171.1 req/s (5.8 ms/req)
    b=409600 n=10 Request rate: 259.6 req/s (3.9 ms/req)
    b=409600 n=100 Request rate: 161.3 req/s (6.2 ms/req)
    b=4096000 n=1 Request rate: 29.4 req/s (34.0 ms/req)
    b=4096000 n=10 Request rate: 27.0 req/s (37.0 ms/req)
    b=4096000 n=100 Request rate: 19.9 req/s (50.3 ms/req)

There are some slower request rates.  
