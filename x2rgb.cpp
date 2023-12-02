#include <iostream>
#include <string>
#include <cstdio>
#include <cmath>

unsigned int x2rgb(unsigned int x);

int main(int argc, char** argv)
{ for (unsigned int i = 1; i < argc; i++)
  { std::printf("%02d: %s", i, argv[i]);
    unsigned int color = 0;
    std::sscanf(argv[i], "%03d", &color);
    std::printf(" : #%06x\n", x2rgb(color));
  }

  return 0; }

unsigned int steps_rgb[6] = { 0, 95, 135, 175, 215, 255 };
unsigned int steps_gray[24] =
{   8,  18,  28,  38,  48,  58,  68,  78,  88,  98, 108, 118,
  128, 138, 148, 158, 168, 178, 188, 198, 208, 218, 228, 238 };

unsigned int x2rgb(unsigned int x)
{ unsigned int rgb = 0;

  if (x < 16) { return 0; } // don't use it because it's user defined colors
  else if (x < 232) // actual colors
  { // r * 36 + g * 6 + b = x - 16
    // r = (x - 16) / 36
    // g = ((x - 16) % 36) / 6
    // b = (x - 16) % 6
    rgb = (steps_rgb[ (x - 16) / 36     ] << 16) |
          (steps_rgb[((x - 16) % 36) / 6] <<  8) |
          (steps_rgb[ (x - 16) % 6      ] <<  0); }
  else // grayscale
  { rgb = (steps_gray[x - 232] << 16) |
          (steps_gray[x - 232] <<  8) |
          (steps_gray[x - 232] <<  0); }

  return rgb;
}
