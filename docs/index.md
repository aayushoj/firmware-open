# Documentation

This is the documentation for System76 Open Firmware. It is set up to be used
with [mdBook], which can generate HTML output for easy navigation.

## Supported models

These models are supported and will receive updates through the firmware
manager:

- addw2
- bonw14
- darp6
- darp7
- darp8
- galp4
- galp5
- galp6
- gaze15
- gaze16-3050
- gaze16-3060
- gaze16-3060-b
- gaze17-3050
- gaze17-3060-b
- lemp9
- lemp10
- lemp11
- oryp6
- oryp7
- oryp8
- oryp9
- oryp10

Other models may be in development or available without support, and can be
seen in the `models/` directory.

If the device becomes bricked it will require restoring the current firmware
using an external programmer. See [Flashing firmware] for details.

### Schematics

System76 customers may request board schematics for their system by sending an
email to firmware@system76.com with the subject line  "Schematics for _model_",
where _model_ is one of the supported models listed above. Please include the
serial number of your system for verification.

You may not share these without explicit permission from System76.


[flashing]: ./flashing.md
[mdBook]: https://github.com/rust-lang/mdBook
