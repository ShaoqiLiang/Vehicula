# Vehicula - Li Xiang L9 Vehicle Configurator

A Qt Quick 3D based vehicle configurator for the Li Xiang L9 (Li Auto L9) electric SUV.

## Overview

Vehicula is an interactive 3D vehicle configurator that allows users to explore and customize the Li Xiang L9 car model. Built with Qt Quick 3D technology, it provides a realistic 3D rendering experience with various interactive features.

## Features

### 3D Vehicle Visualization
- High-fidelity 3D model of Li Xiang L9
- Real-time rendering with HDR environment lighting
- Adjustable camera angles and positions

### Interactive Controls
- **Door Controls**: Open/close all 4 doors with smooth animations
- **Trunk Control**: Open/close the trunk lid
- **Wheel Steering**: Adjustable front wheel steering angle
- **Car Paint Color**: Real-time color customization
- **Headlight Control**: Toggle headlights on/off

### Camera System
- **Body View**: Default exterior view
- **Interior View**: Driver's seat perspective
- **Orbit Animation**: 360° automatic orbit around the vehicle

### Air Conditioning System
- Left/right independent temperature control (16°C - 32°C)
- 5-level wind speed adjustment
- AC power toggle
- 3D particle wind effect visualization

### Lighting Controls
- Adjustable directional light brightness
- Environment probe exposure control
- Emissive factor for interior displays

## Requirements

- Qt 6.9.3 or later
- Qt Quick 3D module
- MinGW 64-bit compiler (Windows)
- Windows 10/11

## Build Instructions

### Using Qt Creator
1. Open `Vehicula.pro` in Qt Creator
2. Select the Qt 6.9.3 MinGW 64-bit kit
3. Click Build → Build Project "Vehicula"

### Using Command Line
```bash
mkdir build
cd build
qmake ..\Vehicula.pro
mingw32-make
```

## Project Structure

```
Vehicula/
├── main.cpp                    # Application entry point
├── main.qml                    # Main UI and 3D viewport
├── QuickButton.qml             # Custom button component
├── QuickSliderBar.qml          # Wind speed slider component
├── Vehicula.pro                # Qt project file
├── resources.qrc               # Qt resource file
├── LiXiang_L9/
│   ├── LiXiang_L9.qml         # 3D car model component
│   ├── meshes/                 # 3D mesh files
│   └── source scene/           # Original FBX source
├── maps/                       # Texture maps
├── textures/                   # HDR environment maps
└── images/                     # UI icons and particle textures
```

## Controls

| Control | Description |
|---------|-------------|
| Left/Right Arrows | Adjust temperature |
| Fan Slider | Adjust wind speed (0-5) |
| Power Button | Toggle AC on/off |
| Interior Button | Switch to interior view |
| Body Button | Return to exterior view |
| Orbit Button | Start/stop orbit animation |
| Door Buttons | Open/close doors |
| Trunk Button | Open/close trunk |
| Headlight Button | Toggle headlights |

## License

This project is for educational and demonstration purposes.

## Author

**ShaoqiLiang**
