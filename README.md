# 67 CLIENT — Fabric 1.21.11

Client-side Minecraft mod starter project with an original dark/neon-pink GUI.

## Included
- Right Shift opens the 67 CLIENT menu.
- Sidebar categories: Visuals, HUD, Cosmetics, Themes, Client and About.
- Searchable module list with working ON/OFF switches.
- Pink, purple, blue, red and emerald accent themes.
- HUD toggles for FPS, coordinates, clock and keystrokes.
- Local cosmetic emote actions (wave/dance-style hand animation).
- Settings saved to `config/67client.properties`.

This is an original implementation. It does not include combat automation, packet manipulation,
server bypasses, or code copied from SoberClient.

## Requirements
- Minecraft 1.21.11
- Fabric Loader 0.18.2+
- Fabric API 0.141.1+1.21.11
- Java 21
- Gradle 9.x

## Build
From this folder, run `./gradlew build` (Windows: `gradlew.bat build`). The launcher downloads the pinned Gradle 9.2.0 distribution on your computer if needed.

The mod JAR will be in `build/libs/67-client-1.0.0.jar`.

If you use IntelliJ IDEA, open this folder as a Gradle project, allow Gradle sync to finish,
then run the `build` task.

## Install
Copy the generated JAR into `.minecraft/mods` alongside Fabric API, then launch the
Fabric 1.21.11 profile.

## Controls
- Right Shift: open/close menu
- In the Cosmetics page: choose Wave or Dance to trigger a local visual emote
- In the HUD page: toggle individual HUD elements

## Notes
The project is supplied as source code and has not been compiled in this environment.


## Module scope and skins
The GUI now includes the category names from the reference image and a selection of visual,
informational and quality-of-life modules. The Combat category is informational only. Automated
combat actions (for example auto-crystal, triggerbot or auto-totem) are intentionally not included.

Minecraft 1.21.11's official Mounts of Mayhem release adds mobs, equipment and gameplay features;
it does not announce a new player-skin format. Skin/cape account changes require authenticated
Minecraft services. A future skin gallery can preview/import local PNG files, but this starter
does not claim to upload or change an online account skin.

## Module Skins
Catégorie **Skins** dans le menu : Skin par défaut, Bob l'éponge, Patrick Star, Verity, Carlos.
- La skin est appliquée **localement** à ton joueur (seul toi la vois). Ton compte n'est pas modifié.
- Les PNG fournis dans `src/main/resources/assets/sixtyseven/textures/skins/` sont des **placeholders
  unis** : remplace-les par tes propres skins 64x64 en gardant les mêmes noms de fichier
  (`spongebob.png`, `patrick.png`, `verity.png`, `carlos.png`).
- Pour ajouter une skin : un PNG dans ce dossier + une ligne dans `SkinModule.SKINS`.
- Implémentation : Mixin sur `AbstractClientPlayer#getSkin` (`mixin/AbstractClientPlayerMixin.java`).


## Screenshot module catalogue update
The GUI catalogue now includes the module labels visible in the supplied reference:
- Combat: AUTO TOTEM, AUTO CRYSTAL, ANCHOR MACRO, DOUBLE ANCHOR, INV TOTEM, AIMASSIST,
  MACE SWAP, HITBOX, ELYTRA SWAP, HOVER TOTEM, SHIELD BREAKER, TRIGGERBOT, MACE BOMBER.
- Misc: SKINPROTECT, NAMEPROTECT, FREECAM, AUTOTPA, AUTOCLICKER, FASTUSE, NAMETAGS,
  FAKEPAY, WEATHERNOTIFIER, FAKESTATS, FAKEROLES, ARMORTRIMHIDER, CUSTOMCROSSHAIR,
  MEDIA/STAFFNAMES/ICONS, STAFFLIST, CUSTOMGLINT, CUSTOMFOV, COORDSNAPPER, AUTOWALK,
  ZOOM, FREELOOK, SPAWNERPROTECT.
- Render: BLOCKESP, STORAGEESP, BLOCKENTITYESP, DEBUGHOLEESP, FULLBRIGHT, PLAYERESP,
  MOBESP, SPAWNERNAMETAGS, SUSCHUNKFINDER, CHUNK FINDER, REGIONMAP.
- Visuals: CUSTOMBLOCKOUTLINE, HITPARTICLES, CUSTOMACCESSORIES, MOTIONBLUR.
- Client: HUD, SPOTIFYHUD, CHATMACRO, CONFIGSHARE, SWINGSPEED, 67JUMPCIRCLES, CLICKGUI.

The entries are currently a configurable GUI catalogue (saved ON/OFF states). A toggle is not
proof that its underlying game feature has been implemented. Existing HUD and local skin code
remain separate. Sound settings are stored as preferences; sound playback is not yet wired.


## Build troubleshooting
- Use JDK 21 (not just a JRE).
- First build requires internet access to download Gradle, Minecraft and Fabric dependencies.
- Windows: run `gradlew.bat build`; Linux/macOS: run `chmod +x gradlew && ./gradlew build`.
- The catalogue contains labels and saved toggles; it does not mean every listed module has a gameplay implementation.

## Créer le .jar en un clic
Installe le JDK 21 (https://adoptium.net), puis double-clique sur `build.bat` (Windows) ou lance
`./build.sh`. Le jar final est copié dans `MOD-JAR/67-client-1.0.0.jar`.
Ou sans rien installer : dépôt GitHub > Actions > Build mod > Run workflow.
