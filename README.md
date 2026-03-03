# Mathematical Shader Demo

A WebGL shader demonstration featuring mathematical patterns, soft color palettes, rounded corners, and interactive materials.

## Features

### Mathematical Transformations
- **Vertex Shader**: Wave transformations using sine and cosine functions
- **Dynamic Movement**: Time-based animations with mathematical functions
- **Rounded Corners**: Smooth corner rounding with distance calculations

### Soft Color Palette

### Viewing Locally
1. Clone this repository
2. Start a local server:
   ```bash
   # Using Python
   python -m http.server 8000
   
   # Using Node.js
   npx serve .
   
   # Using PHP
   php -S localhost:8000
   ```
3. Open `http://localhost:8000/gallery.html` in your browser

### Deploying to GitHub Pages
1. Push this repository to GitHub
2. Go to Settings → Pages in your repository
3. Select source: "Deploy from a branch"
4. Choose main branch and `/ (root)` folder
5. Your site will be available at https://ajinkyagorad.github.io/HtmlShader/gallery.html

## 📁 Project Structure

```
├── index.html              # Original mathematical shader demo
├── gallery.html            # Main gallery interface ⭐
├── README.md              # This file
├── .nojekyll              # GitHub Pages compatibility
├── vertex.glsl            # Vertex shader for main demo
├── fragment.glsl          # Fragment shader for main demo
├── advanced_vertex.glsl    # Advanced vertex shader
├── advanced_fragment.glsl  # Advanced fragment shader
└── shaders/               # Individual shader experiments
    ├── 2.html            # Mango Stack Playground
    ├── 3.html            # Mango Pulse - Fluid Edition
    ├── 4.html            # Mango Pulse - Liquid Flow
    ├── 5.html            # Mango Pulse - Full Journal
    ├── 6.html            # Fluid Motion Blog
    ├── 7.html            # LUMINAL - Shader Native
    ├── 8.html            # LUMINAL - Interactive
    ├── 9.html            # LUMINAL - Liquid UI
    ├── 10.html           # Motion GPU Recreation
    ├── 11.html           # LUMINAL - Fire & Steam
    ├── 12.html           # Inter-dimensional Void
    └── 13.html           # LUMINAL - Rebirth
```

## 🎭 Shader Showcase

### 1. Mathematical Shader Demo (`index.html`)
- **Features**: 4 material patterns, mouse interaction, soft gradients
- **Techniques**: Wave transformations, rounded corners, dynamic shadows

### 2. Mango Stack Playground (`shaders/2.html`)
- **Features**: Geometric stack patterns, color controls
- **Techniques**: GPU-powered animations, interactive parameters

### 3. Mango Pulse - Fluid Edition (`shaders/3.html`)
- **Features**: Viscous flow simulation, heat effects
- **Techniques**: Liquid dynamics, thermal distortion

### 4. Mango Pulse - Liquid Flow (`shaders/4.html`)
- **Features**: Gooey UI, magnetic interactions
- **Techniques**: SVG filters, liquid topology

### 5. Mango Pulse - Full Journal (`shaders/5.html`)
- **Features**: Complete blog interface, organic design
- **Techniques**: Liquid CSS, parallax effects

### 6. Fluid Motion Blog (`shaders/6.html`)
- **Features**: Modern blog, glassmorphism
- **Techniques**: Tailwind CSS, GPU backgrounds

### 7. LUMINAL - Shader Native (`shaders/7.html`)
- **Features**: Procedural typography, infinite scroll
- **Techniques**: SDF rendering, shader-native UI

### 8. LUMINAL - Interactive (`shaders/8.html`)
- **Features**: Click interactions, dynamic effects
- **Techniques**: Physical simulation, responsive design

### 9. LUMINAL - Liquid UI (`shaders/9.html`)
- **Features**: Magnetic cursor, refraction effects
- **Techniques**: Advanced liquid simulation, gooey effects

### 10. Motion GPU Recreation (`shaders/10.html`)
- **Features**: Mathematical patterns, GPU playground
- **Techniques**: Complex transformations, WGSL recreation

### 11. LUMINAL - Fire & Steam (`shaders/11.html`)
- **Features**: Thermodynamic effects, fire simulation
- **Techniques**: Heat haze, boiling effects, particle systems

### 12. Inter-dimensional Void (`shaders/12.html`)
- **Features**: Entities emerging from void, fluid space warping
- **Techniques**: Neon-pastel colors, generative patterns, vortex effects

### 13. LUMINAL - Rebirth (`shaders/13.html`)
- **Features**: Interactive terrain, day/night cycles, rejuvenation
- **Techniques**: Raymarching, ecosystem simulation, dynamic lighting

## 🎮 Gallery Controls

### Grid View
- **Click any card**: Open shader in slideshow mode
- **Hover**: Preview shader animation
- **Tags**: Filter by shader type

### Slideshow Mode
- **Arrow Keys**: Navigate between shaders
- **Escape**: Exit slideshow
- **Previous/Next Buttons**: Manual navigation
- **Fullscreen**: Immersive viewing experience

## 🛠️ Technical Details

### WebGL Features Used
- **Vertex Shaders**: Position transformations, wave effects
- **Fragment Shaders**: Color calculations, pattern generation
- **Uniforms**: Time, mouse position, resolution
- **Textures**: Procedural generation
- **Frame Buffers**: Post-processing effects

### Performance Optimizations
- **Lazy Loading**: Iframes load content when needed
- **Responsive Scaling**: Adapts to device capabilities
- **Efficient Rendering**: Single draw calls where possible
- **Memory Management**: Proper cleanup and resource reuse

## 🌐 Browser Compatibility

- **Chrome**: Full support
- **Firefox**: Full support
- **Safari**: Full support (iOS 13+)
- **Edge**: Full support
- **Mobile**: Optimized touch interactions

## 📱 Mobile Features

- **Touch Navigation**: Swipe gestures in slideshow
- **Responsive Layout**: Adapts to screen size
- **Performance**: Optimized for mobile GPUs
- **Accessibility**: Keyboard navigation support

## 🎨 Customization

### Adding New Shaders
1. Create new HTML file in `shaders/` directory
2. Add entry to `shaders` array in `gallery.html`
3. Include title, description, file path, and tags

### Modifying Gallery Appearance
- **Colors**: Edit CSS variables in `gallery.html`
- **Layout**: Adjust grid template columns
- **Animations**: Modify transition durations

## 🚀 Deployment

### GitHub Pages
1. Ensure all files are committed to main branch
2. Enable GitHub Pages in repository settings
3. Select source as "Deploy from a branch"
4. Choose main branch and root directory
5. Site will be live within minutes

### Alternative Hosting
- **Netlify**: Drag and drop deployment
- **Vercel**: Git integration
- **Surge.sh**: Simple static hosting
- **Firebase Hosting**: Google's hosting solution

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Add your shader experiment
4. Update the gallery with your shader
5. Submit a pull request

## 📄 License

This project is open source and available under the MIT License.

## 🔗 Links

- **Live Demo**: https://ajinkyagorad.github.io/HtmlShader/gallery.html
- **Repository**: https://github.com/ajinkyagorad/HtmlShader
- **WebGL Documentation**: [MDN WebGL Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
- **Shader Tutorials**: [ShaderToy](https://www.shadertoy.com)

---

*Created with ❤️ for the WebGL community*

## Browser Compatibility

Requires WebGL support in the browser. Compatible with:
- Chrome 9+
- Firefox 4+
- Safari 5.1+
- Edge 12+
- Opera 12+

## License

This project is provided as-is for educational and demonstration purposes.
