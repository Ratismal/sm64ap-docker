# sm64ap steamdeck builder

Docker configuration to build sm64ap for steamdecks. Credits to https://www.reddit.com/r/SteamDeck/comments/xs30xa/building_super_mario_64_ex_for_steamdeck/

## Steps
1. Make sure Docker is installed
2. Place your legally obtained ROM named as `baserom.us.z64` (or `baserom.jp.z64`, if applicable).
3. Run `run.bat` (for windows) or `run.sh` (for linux)
4. The built project will be saved under the `dist` folder. Transfer this to your steamdeck in whatever manner you prefer.

On your steamdeck:
1. Navigate to whatever folder you've transferred the contents of `dist` to
2. Run `chmod +x sm64.us.f3dex2e`
3. Add as a non-steam game (if preferred)