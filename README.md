# Tabletop Simulator EmmyLua Types

The current official release of EmmyLua is a good foundation, however it's lacking the functionality necessary to type anything beyond the most simple code.

I've added a _heap_ of functionality to EmmyLua, and these types are reliant on these [new features](https://github.com/EmmyLua/IntelliJ-EmmyLua/pull/342). As such you will need my fork of EmmyLua rather than the version officially available from Jetbrains.

## Installation

You'll need the aforementioned EmmyLua fork. We're publishing builds and installation instructions as [Github Releases](https://github.com/Benjamin-Dobell/tts-types/releases).

Once you've installed IntelliJ and EmmyLua, to use these Tabletop Simulator types, just clone this repository into the directory where you're keeping (or going to keep) your Tabletop Simulator Lua files. Then open your mod directory in IntelliJ and simply start working.

You don't need to `require` these files. They're purely metadata for EmmyLua, they don't need to be in anyway shipped with your Tabletop Simulator mods - they're development tooling only and have absolutely zero impact on your mod at runtime. EmmyLua will find the relevant type information automatically as long as these types are present anywhere within the opened project path.

