# compylock
Competitive Focused deadlock configs and Mods.

- How do I install the files?

gameinfo.gi is in ``deadlock\game\citadel``
video.txt is in ``\steam\userdata\[your STEAMID32 / friend code]\1422450\local\cfg``
If you don't already, make a folder called "addons" in deadlock\game\citadel, and extract all the addons inside that folder.

the only thing you *need* to change is the "deviceID" and "vendorID" AND resolution in video.txt, just make sure to copy your own IDs from the file BEFORE you replace it, and paste them into your new video.txt, and set your resolution to whatever you want.

Also, feel free to change your FOV, which is these two lines in gameinfo.gi
        "citadel_camera_hero_fov" "103"
        "r_aspectratio" "2.4"

Once you've installed everything, make your gameinfo.gi and video.txt files read only. Be sure to uncheck them if you're trying to change them in the future.

- My game crashes on startup, how do I fix it?

There could be many reasons for this, but start out by removing all your addons and reinstalling ONLY the ones in my folder, to ensure there's no conflicts.
QOL lock seems to be a big one, and you shouldn't be using that to begin with.

Next, try deleting your video.txt and gameinfo.gi and then verifying files to reinstall them. Launch your game one more time BEFORE installing the new files.

If all else fails, try a fresh install.

Lastly, there may be some issues on older AMD cards / Nvidia cards as I don't have those cards and some settings may not be available/stable and therefore may causes crashes or poor performance, so my advice would be to take read only off of your video.txt and change any settings related to FSR/DLSS to ensure that your settings work correctly with your system.

- My game doesn't look exactly like yours, why is that?

I most likely have extra VPKs not featured in this repo, or you have conflicting files with the VPKs from that folder.

- How do I play on stretched res?

You will need to change your resolution in video.txt;

4:3
1440x1080 (1080p)
1920x1440 (1440p)

5:4
1350x1080 (1080p)
1800x1440 (1440p)



Bare in mind you may need to create a custom resolution in your monitor settings using CRU - (https://www.monitortests.com/forum/Thread-Custom-Resolution-Utility-CRU)

then, download the stretch res fix VPK to fix the UI.

For the VPKs in this repo, Healthbar vpk 1 should have higher prio (number in pak00_dir) should be higher than vpk 2.
