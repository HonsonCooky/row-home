# RowHome

A simple 2D game engine, designed for developing keyboard based games.

# Project Overview:

RowHome is a C++ Game Engine for developing 2D, keyboard-based video games. Inspired by modern Vim text editing, games
developed with RowHome will have a primary focus on keyboard interactions and modal states; A genre I'm calling "Visual
Improved Gamification" : `VimG` (pronounced like 'scrimmage', replacing 'scrim' with 'vim').

## VimG Games Specifications

Before we design the RowHome engine specifications, it's important to understand what kind of video game we aim to
enable the creation of. As such, the following guide outlines the pillars of what makes a VimG game.

_**Please Note:** RowHome will likely be capable of building an assortment of games. The primary focus of this engine is
to create VimG games, and will provide tools and features inline with this goal._

### Gameplay:

Players will interact with the game via a keyboard or controller, and interactions will follow Vim's `COMMAND, COUNT, 
MOTION` input architecture. Furthermore, VimG games will have access to four modal states: `NORMAL, INSERT, VISUAL,
COMMAND`. The idea behind VimG gameplay is to utilze the foundational components of Vim into a video game format; Taking
the functionality for text editing and building a game.

Whilst the above specification may seem limiting, the implementation of how these components are used will be a
developers choice. WASD movement will still be viable if a developer so chooses.

**Example Gameplay Mechanics**: <br/>
To illustrate with an example, a 2D platformer may implement the following mechanics:

```yml
NORMAL:
  - D, F: movement
  - H, J, K, L: aim
  - S: shoot
  - 2 -> S: shoot twice (uninterruptible)
  - Y -> 1 -> W: yeet primary weapon
  - Y -> 2 -> W: yeet secondary weapon

  - V: enter visual mode
  - ESC: open menu

CONTROLLER NORMAL:
  #...
  - D-Pad-Up -> X -> R1: yeet primary weapon
  #...

VISUAL:
  - H, J, K, L: pan camera
  - ESC: enter normal mode
```

### Developer Experience

RowHome will exist as a C++ library ONLY. Developers should be able to build a complete game without ever leaving Vim or
using a mouse. Asset creation may need some external tools, but support for text based assets (like SVGs) will be
included in order to enable an exclusive Vim development experience (if one so chooses).

# Abstract Scope

- Window: A window for the game to render in + API for manipulating the size and state (fullscreen, windowed, etc).
- Canvas: A means to render assets in the window + API to alter the framerate.
- Initalization: A function that runs on startup.
- Logic Loop: A function that runs every frame to update game state.
  - Rendering is done concurrently and automagically
- Sprites: Renderable, animatable, objects to render on screen.
  - Default Sprites: Shapes, Text, Composables `Sprite.Text("Hello World");`
- Input Publisher: Input + Mode event publishing.

In theory, the abstract concepts above should provide a developer with all the tools necessary to build a video game. At
the very least, its a start.
