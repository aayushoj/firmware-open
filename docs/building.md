# Building

Dependencies can be installed with the provided script.

```
./scripts/deps.sh
```

If rustup was installed for the first time, it will be required to source the
environment file it installed to use the correct Rust toolchain.

```
source ~/.cargo/env
```

A script is provided to build the firmware. The available targets for building
are the model folders in `models/`. For example, to build for QEMU:

```
./scripts/build.sh qemu
```

Once built, the firmware must be flashed to use. Several scripts are available
to flash the new firmware, depending on how it is going to be written.

- `scripts/qemu.sh`: [Run the firmware in QEMU](./debugging.md#using-qemu) (specific to the QEMU model)
- `scripts/flash.sh`: Flash using the internal flasher
- `scripts/ch341a-flash.sh`: Flash using a CH341A programmer
- `scripts/spipi-flash.sh`: Flash using a Raspberry Pi

See [Flashing firmware](./flashing.md) for more details.
