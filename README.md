# VGMCK_DOS
A fork (of a fork of zzo38's VGMCK MML to VGM Compiler) for providing DOS binary.  
The only change from the original repository is a change in file names (DOS systems require file names no longer than eight characters) and the addition of a Makefile for DOS (DJGPP).  
  
## Build
On Linux just use `make`, on MS-DOS/FreeDOS/DOSBox install [DJGPP](https://www.delorie.com/djgpp/) and use `make -f make_dos.mk`.

# VGMCK_Arch
A fork of zzo38's VGMCK MML to VGM Compiler, doubling as an archive of the original version.

# Usage
`vgmck {input.mml} {output.vgm}`

# Wiki (WIP)
https://github.com/chiptunecafe/VGMCK_Arch/wiki

# Long Term Goals
* T6W28: Add fixed noise pitches
* SN76489: Add noise pulse & fixed noise pitches

# Currently Supported Sound Chips
* SN76489 PSG (SMS/GG, BBC Micro, PCjr, Tandy)
* OPL2/YM3812
* HuC6280 (PC-Engine/TurboGrafx-16)
* RP2A03 (Famicom/NES)
* LR35902 (GameBoy)
* T6W28 (NeoGeo Pocket + Color)
* QSound
* OPLL/YM2413
* OPN2/YM2612
* Atari PoKEY
* OPL3/YMF262
* General Instruments AY-3-8910
* AY8930 (supported by the VGM format, but not by the emulator)
* OPL4/YMF278B

# Features
* Detune
* Transpose
* Text macros
* Track questioning
* Custom musical scales with up to ten letters
* Custom pitches for the notes of the scale
* Many (not all) chips can be doubled (as specified in VGM specification)
* Full GD3 support (including Unicode)
* Change the clock rate and options of any chips
* Change the frame rate
* Auto arpeggio
* Local desynchronized loops
* Entire song loops (which cannot be desynchronized, though)
* Sample list macros
* Auto track switching
* Direct register write
* Direct VGM write
* Fast forward
* Portamento
* And more...
