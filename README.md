# RowHome

A simple 2D game engine for developing keyboard based games. Using the Vulkan engine, this project serves as both a
passion driven endevour, and a learning oppurtunity for C++ development. Is this an overly ambitious side project? Of
course, when has a side project ever had reasonable scope!

# Project Overview:

RowHome is a C++ Game Engine for developing 2D, keyboard-based video games. Inspired by modern Vim text editing, games
developed with RowHome will have a primary focus on keyboard interactions and modal states; A genre I'm calling "Visual
Improved Gamification" : `VimG` (pronounced like 'scrimmage', replacing 'scrim' with 'vim').

## VimG Games Specifications

Before we design the RowHome engine specifications, it's important to understand what kind of video game we aim to
enable the creation of, else, we risk build a general game engine (which is far too much work for this simple developer).
As such, the following guide outlines the pillars of what makes a VimG game.

_**Please Note:** RowHome will likely be capable of building an assortment of games. The primary focus of this engine is
to create VimG games, and will provide tools and features inline with this goal._

### Gameplay:

Players will interact with the game via a keyboard or controller, and interactions will follow Vim's `COMMAND, COUNT, 
MOTION` input architecture (e.g. d4j = delete four lines down). Furthermore, VimG games will have access to four modal
states: `NORMAL, INSERT, VISUAL, COMMAND`. The idea behind VimG gameplay is to utilze the foundational components of Vim
into a video game format; Taking the functionality for text editing and building a game.

Whilst the above specification may seem limiting, the implementation of how these components are used will be a
developers choice. WASD movement will still be viable if a developer so chooses, and features will be included by
developer implementation (e.g. modal states are not required).

**Example Gameplay Mechanics**: <br/>
To illustrate with an example, a 2D platformer may implement the following mechanics:

```yml
NORMAL:
  - D, F: movement
  - H, J, K, L: aim
  - [" "]: jump
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

RowHome will exist as a C++ library ONLY. Developers should be able to build a complete game without ever leaving their
Vim / Neovim editor. Asset creation may need some external tools, but support for text based assets (like SVGs and
bitmaps) will be included in order to enable an exclusive text-based development experience (if one so chooses).

# Abstract Scope

RowHome will provide tools, enabling the following capabilities to be abstracted from the developer:

- Window: Start a process with a visual UI window on an x86 based OS (Linux, MacOS, Windows 10/11)
  - Size: Alter the size | state of the window (windowed, borderless, fullscreen).
  - Resolution: Alter the displayed resolution of the game contents.
  - Framerate: Alter the max framerate of the rendered game contents.
  - Render: Render components onto the visual UI window canvas.
- Renderables: Data structures and interfaces for rendering game components.
  - Location: On screen location, and off screen detection
  - Static: Single file image rendering
  - Dynamic: Animated visual rendering, custom framerate and timings
  - Hitbox: Defaults to image box, customizable to alternative shape
  - Collision Detection: Event driven "OnCollision" function
- Physics:
  - Gravity
