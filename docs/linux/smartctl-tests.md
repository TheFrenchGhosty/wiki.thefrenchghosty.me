# Testing drives with SmartCTL

### Check informations about a drive

```
smartctl -i /dev/sdX
```

### Get all smart data about a drive

```
smartctl -a /dev/sdX
```

### Testing a drive

First, check (and ideally, take note of) how long has the drive has been powered on, this will be useful to know if the test is finished, to do that check the smart data, the information you need is is `Power_On_Hours` the `RAW_VALUE` is what you need.

#### Short test

```
smartctl -t short /dev/sdX
```

#### Long test

```
smartctl -t long /dev/sdX
```

### Getting the tests results

This is where the `Power_On_Hours` that you noted before is useful, if there is nothing at the number of hour you noted (or after), it means the test isn't finished.

```
smartctl -l selftest /dev/sdX
```
