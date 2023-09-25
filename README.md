# RowHome

A simple 2D game engine, designed for developing keyboard based games.

# Project Overview / Idea:

RowHome will be a small C++ Game Engine for developing 2D, keyboard-based video games. Inspired by modern Vim text
editing, games developed in RowHome will have a primary focus on keyboard interactions and modal states; A genre I'm
calling `"Visual Improved Gamification"`.

| Game Genre                   | Shorthand | IPA       | Sounds like                               |
| :--------------------------- | :-------: | :-------- | :---------------------------------------- |
| Visual Improved Gamification |   VimG    | /vˈɪmɪdʒ/ | 'scrimmage', but 'vim' instead of 'scrim' |

_This is just how I'm pronouncing it, you do you boo_

# Abstract Scope

Being my first Game Engine, a little research into what I need to be building is required. Game Engines are roughly
defined as "software frameworks designed for the development of video games"... And that's about it. Given this rigorous
and detail oriented definition _\*sarcasm\*_, below is an outline of what RowHome aim's to provide as a game development
tool.

A developer should be able to import RowHome libraries into their own project, and use + extend the base functionality
to develop their own game. RowHome will implement:

- **_Canvas + Manipulation_**: A window to render the game with sizing, resolution and frame rate logic; Providing an
  interface to change these values.

- **_Sprite Rendering_**: Render + animate content on the canvas; Providing an interface for manipulation of location,
  size, layer, animation cycle and timings, etc.

- **_Sprite HitBoxes and Interactions_**: Collision and interaction detection engine; Providing an event broadcasting
  system for reactionary developer made logic, along with customization for hitboxes.

- **_Menu System_**: Pausing and Menu Navigation logic; Providing visual and menu tree customizability.

- **_Lighting Engine_**: Provide a light source and basic rendering engine.

# White-Boarding
