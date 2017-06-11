# NAME

vcut - Video Cutting on the CLI

# SYNOPSIS

    vcut [OPTIONS] <clipfile>
    vcut --help

# OPTIONS

    -h --help	Print this help text and exit
    -o file	Output filename

# DESCRIPTION

vcut allows you to cut clips from raw videos into a single video file,
using ffmpeg. It was written after realizing that video cutting starts with
reviewing the raw material and taking notes of the good parts.
If your notes are in vcut's clipfile format, it will do the heavy lifting
automatically.

The input is a clipfile, defining the source clips. Each line defines a
source raw video file, a start time, an end time and some optional description.

Example clipfile Mugello.clips

    V000121.mp4 25:13 26:17 Elbow down Arrabbiata 2
    V000122.mp4 00:59:07 01:01:12 311 km/h before San Donato

vcut will create a single video called Mugello.mp4 containing the 2 clips.

# IMPORTANT

All source videos should be in the same format.
Source video format shall allow using the ffmpeg concat demuxer for
final concatenation, without the necessity to re-encode.

Allowed time formats: HH:MM:SS or MM:SS

The output video is generated in the current directory, along with some
temporary files, including the cut clips and the list file for the
ffmpeg concat demuxer.
The output file is named after the clipfile: Mugello.clips will result in
Mugello.mp4, unless you use the -o option.
The clips can be defined on standard input, resulting in stdin.mp4.

# DEPENDENCIES

Perl, ffmpeg
