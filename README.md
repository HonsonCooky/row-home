# RowHome

**_State_**: `Active Development`

RowHome is a simple game engine for developing 2D, keyboard based games in C++. This overly ambitious side project

# Idea Overview

**_Exploring the Concept of "RowHome" and VimG: A Novel Approach to Game Development._**

In the ever-evolving world of gaming, where innovation and creativity reign supreme, we'd like to introduce you to a
fresh perspective on game development. It's called the "RowHome" game engine, and it represents a shift in how we
approach creating and enjoying games. Let's delve into the concept and philosophy behind "RowHome" and the unique game
genre it's introducing, "VimG" (Visual Improved Gamification).

VimG, pronounced like "scrimmage," draws inspiration from a not-so-surprising source: Vim, the renowned text editor. At
its core, VimG adheres to Vim's principles, including modal states, keyboard-based inputs, and the motions. These
elements form the foundation of VimG games, creating an experience that's both familiar (to Vim / Neovim users) and
unique.

The driving force behind RowHome is to empower individuals by building upon the programming skills and current workflow
they already possess. Many modern game development environments demand a significant investment in learning new
interfaces and workflows, presenting a steep learning curve. RowHome challenges this status quo by enabling developers
to create keyboard-based games efficiently, with specialized tools tailored to Vim motions and modal states.

Here's how RowHome accomplishes this:

1. **Seamless Integration with Your Workflow:** RowHome leverages your programming skills and current workflow, enabling
   you to develop video games in full without needing to leave your IDE of choice. This approach is specifically
   tailored to Vim and Neovim users, ensuring a smooth experience as you dive into game development.

2. **Text-Based Graphics:** RowHome offers a unique approach to graphics creation, enabling you to build animations and
   images entirely in text formats if you choose to do so. Unlike game development environments that rely on UI-based
   tools and mouse interactions, RowHome's text-based approach lets you craft animations and images all within your
   preferred coding environment, allowing you to stay in your preferred IDE while creating games.

3. **Tailored for Keyboard-Based Games:** While VimG can be used to create an array of keyboard-based game, RowHome's
   specialized tools are designed to excel in the realm of Vim-like functionalities. The intention behind this design is
   to harness Vim skills to play AND create immersive experiences. VimG games built with RowHome take advantage of
   familiar keyboard-based inputs, allowing you to dive into captivating worlds and interactive narratives with the same
   precision and efficiency you bring to your coding endeavors. This synergy between Vim and VimG opens up a new
   dimension of immersive gaming where your keyboard becomes the gateway to endless adventures and creative
   possibilities.

4. **Empowering Developers with Minimal Abstractions:** RowHome intentionally minimizes abstractions, allowing
   developers to exercise the full breadth of their programming knowledge. Unlike many modern game development
   environments that often hide complex details behind layers of abstraction, RowHome invites developers to engage
   directly with the underlying mechanics and code. This approach not only enhances your understanding of game
   development but also provides a level of control and customization that can't be achieved through excessive
   abstraction. It's an environment where your programming expertise is truly unleashed, enabling you to craft unique
   and innovative gaming experiences. Of course, there is nothing stopping community based packages from enabling
   common features, but by default, the experiences you create are designed to challenge the mathematics and problem
   solving skills you've fostered.

In essence, RowHome is about bridging the gap between your professional life and your passion for game development. Many
aspiring developers enter the industry with game development dreams, but the complexities of life often intervene,
diverting their paths along unforeseen trajectories, compounded by the daunting realization that there's simply too much
to learn in the modern day to pick it all up easily. RowHome is an invitation to create, explore, and innovate without
the constraints of traditional game development environments. Whether you're a seasoned developer looking for a creative
outlet or a gamer eager to program, VimG and RowHome offer a unique path to achieving your goals.

Welcome to a revitalized era in game development.

# Abstract Scope

The following scope outlines components of this project that will be provided via the RowHome API.

1. **Graphics Rendering:**

   - Efficient 2D rendering with support for both raster (e.g., PNG, JPEG) and vector graphics (SVG).
   - Hardware acceleration for smooth graphics performance.

2. **Physics Simulation:**

   - Basic 2D physics engine for collision detection and response.
   - Integration with user-defined collision shapes.
   - Rigid body dynamics for 2D objects.

3. **Input Handling:**

   - Support for keyboard and gamepad input.
   - Customizable input mapping and event handling.

4. **Audio Playback:**

   - Basic audio playback capabilities for background music and sound effects.
   - Integration with audio formats like WAV and MP3.

5. **Asset Management:**

   - Loading and management of 2D assets, including raster images (sprites, textures).
   - Basic asset caching for improved performance.

6. **Tilemap Support:**

   - Tilemap editor and rendering for 2D level design.
   - Tile-based collision detection and optimization.

7. **Cross-Platform Compatibility:**

   - Compatibility with multiple platforms (Windows, macOS, Linux) using C++.

8. **Performance Optimization:**

   - Efficient rendering and memory management for 2D assets.
   - Support for sprite batching and texture atlases.

9. **Documentation and Examples:**

   - Comprehensive documentation and code examples for C++ developers.
   - Tutorials and guides for getting started with the engine.

10. **Licensing:**

    - Clear licensing terms and options.
    - Possibility for open-source or commercial licensing.

11. **Legal Compliance:**

    - Compliance with relevant software and copyright laws.
    - Licensing agreements for third-party libraries and assets.
