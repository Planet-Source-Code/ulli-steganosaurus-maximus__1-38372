When you don't know it's there you don't try to find it. This app is not perfect and I'm sure you can improve it by adding all kinds of gimmicks and a better UI. Anyway, this stego can hide up to 32k in a picture of 300 by 300 pixels 24 deep with no visible effect. Btw - you can drop a picture file on the .EXE-Icon do open and extract.

Have fun

PS
The currently preset password is ULLI, you may want to remove that, it's in txPW.Text

A few recommendations: colorful pictures with many details are better than pictures with large patches of a uniform color. A closer analysis of a perfectly black picture with a hidden text in it for example will reveal that not every pixel is perfectly black. This being a first hint it may trigger a manual extraction of all 'unblack' pixels and finally a decryption of the hidden text. The hidden text itself is encrypted using CRC4 and it may be a good idea to replace that with a safer algorithm if you plan to use this app in critical situations.

Don't try to convert a picture with a hidden text in it to any other format than BMP. The compression algorithms used with GIF or JPG for example will compress the minute alterations in the picture out of it
