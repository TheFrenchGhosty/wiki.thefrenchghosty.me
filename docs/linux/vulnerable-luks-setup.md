## Context

On 2023-04-17 [a report](https://nantes.indymedia.org/posts/87395/une-lettre-divan-enferme-a-la-prison-de-villepinte-perquisitions-et-disques-durs-dechiffres/) (in french) came out that said that someone had its LUKS encrypted drive decrypted by the police (even though he was using a long password). 

This article is a simplified/more readable version of a [longer article](https://mjg59.dreamwidth.org/66429.html) to check if you are running a vulnerable LUKS setup.


## Note

By design, if you use GRUB on an encrypted boot partition, the LUKS setup used for it is insecure since GRUB doesn't support LUKS2 encrypted boot partition.

Some people ([including the LUKS creator](https://teddit.pussthecat.org/r/linux/comments/12q51ce/psa_upgrade_your_luks_key_derivation_function/jgpvsqc/#c)) are debating wether or not it was actually brute-force that broke the encryption. Since, in theory, even with the most basic/insecure LUKS setup, it shouldn't be possible to brute-force the password. However, it's still [possible](https://teddit.pussthecat.org/r/linux/comments/12q51ce/psa_upgrade_your_luks_key_derivation_function/jgq41pu/#c) because passwords are rarely random.


## Grab the data

Once the drive is decrypted, run:

```
sudo cryptsetup luksDump /dev/sdXY
```

`/dev/sdXY` is the partition on which the crypt device is, example:

```
NAME     MAJ:MIN RM   SIZE RO TYPE  MOUNTPOINT
sda        8:0    0   1.1T  0 disk  
└─sda1     8:1    0   1.1T  0 part  
  └─hdd 254:0    0   1.1T  0 crypt /mnt/
```

In this example, this is `sda1`.

The output of this command will be displayed on your terminal.


## Analyse the data

In this output 2 informations need to be checked:

Version **must be** 2.

```
LUKS header information
Version:       	2
```

AND:

`PBKDF` under "Keyslots" **must be** `argon2id` (Note: what's under "Digests" doesn't matter).

```
Keyslots:
  0: luks2
	Key:        <REDACTED>
	Priority:   <REDACTED>
	Cipher:     <REDACTED>
	Cipher key: <REDACTED>
	PBKDF:      argon2id
```

If both values are correct: you are safe. If not, you are running a vulnerable LUKS setup, and must follow the fix of the [original article](https://mjg59.dreamwidth.org/66429.html).


## References

- https://mjg59.dreamwidth.org/66429.html

- https://teddit.pussthecat.org/r/linux/comments/12q51ce/psa_upgrade_your_luks_key_derivation_function/