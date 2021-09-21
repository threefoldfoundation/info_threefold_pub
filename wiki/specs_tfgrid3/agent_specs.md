# tfgrid agent specs

!!!include:tfgrid_agent

## Remarks

- interface is very modular and chatty, but allows controlled deployment at backend e.g. follow up on deployment, error handling, going from single requests to full blown requests
- no need for multisignature yet

## Interface

- rust using openapi 3 (integrate the web interface to allow people to play)

## Implementation Questions

- implement in Rust, Vlang or Golang?


## Compatibility

- make compatible with structs as used in vlang
- enumerators are int's, check when int, if int found map to string as used in further processing

