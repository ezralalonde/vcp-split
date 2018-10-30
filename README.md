# vcp-split
Process Vidcutter .vcp files using ffmpeg

## Usage

First create or find a basic `.vcp` file made by, or compatible with VidCutter, such as the one below:

```txt
  /home/videos/test.mp4
  4.920000	174.920000	0	"Intro"
  177.520000	276.320000	0	"Making a VCP file with VidCutter"
  278.520000	421.000000	0	"Processing the VCP with cutter.sh"
  421.240000	557.640000	0	"Outro"
```

Then run the following script.
```sh
    sh cutter.sh test.vcp new 0
```

The script has 3 parameters:

1. VCP file location (required, defaults to no file, `test.vcp` in the example)
2. Folder to place new video files into (recommended, defaults to `/`, `new` in the example)
3. The digit to start numbering with (recommended, defaults to `0`, `0` in the example)

In the above example, `/home/videos/test.mp4` would be split into 4 files, `new/00 Intro.mp4', `new/01 Making A VCP file with VidCutter.mp4`, etc.

It's recommended to always include all three parameters, though this isn't strictly necessary the script isn't especially robust, and the defaults aren't particularly useful.
