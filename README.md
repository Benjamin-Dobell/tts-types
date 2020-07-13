# Tabletop Simulator Luanalysis Types

These API types are for [Luanalysis](https://github.com/Benjamin-Dobell/IntelliJ-Luanalysis), a free Lua IDE with support for static type checking.

## Installation

Once you've installed IntelliJ and Luanalysis, to use these Tabletop Simulator types, just clone this repository into the directory where you're keeping (or going to keep) your Tabletop Simulator Lua files. Then open your mod directory in IntelliJ and simply start working.

You don't need to `require` these files. They're purely metadata for Luanalysis, they don't need to be in any way shipped with your Tabletop Simulator mods - they're development tooling only and have absolutely zero impact on your mod at runtime. Luanalysis will find the relevant type information automatically as long as these types are present anywhere within the opened project path.
