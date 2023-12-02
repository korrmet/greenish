#include <iostream>
#include <string>
#include <cstdio>
#include <cmath>

unsigned int rgb(unsigned int r, unsigned int g, unsigned int b);
unsigned int x2rgb(unsigned int x);
unsigned int manhattan_distance(unsigned int rgb1, unsigned int rgb2);

int main(int argc, char** argv)
{ for (unsigned int i = 1; i < argc; i++)
  { std::printf("%02d: %s", i, argv[i]);

    unsigned int red = 0;
    unsigned int green = 0;
    unsigned int blue = 0;
    unsigned int result = 0;
    std::sscanf(argv[i], "%02x%02x%02x", &red, &green, &blue);
    unsigned int color = rgb(red, green, blue);

    unsigned int candidate_idx = 0;
    unsigned int candidate_distance = 0xffffffff;
    for (unsigned int i = 16; i <= 255; i++)
    { unsigned int distance = manhattan_distance(x2rgb(i), color);
      if (distance < candidate_distance)
      { candidate_distance = distance;
        candidate_idx = i; } }
    result = candidate_idx;

    std::printf(" : %03d (distance: %3d)\n", result, candidate_distance); }

  return 0; }

unsigned int steps_rgb[6] = { 0, 95, 135, 175, 215, 255 };
unsigned int steps_gray[24] =
{   8,  18,  28,  38,  48,  58,  68,  78,  88,  98, 108, 118,
  128, 138, 148, 158, 168, 178, 188, 198, 208, 218, 228, 238 };

unsigned int rgb(unsigned int r, unsigned int g, unsigned int b)
{ return (r << 16) | (g << 8) | (b << 0); }

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

unsigned int manhattan_distance(unsigned int rgb1, unsigned int rgb2)
{ int r1 = (rgb1 & 0xff0000) >> 16;
  int g1 = (rgb1 & 0x00ff00) >>  8;
  int b1 = (rgb1 & 0x0000ff) >>  0;

  int r2 = (rgb2 & 0xff0000) >> 16;
  int g2 = (rgb2 & 0x00ff00) >>  8;
  int b2 = (rgb2 & 0x0000ff) >>  0;

  return std::abs(r1 - r2) +
         std::abs(g1 - g2) +
         std::abs(b1 - b2); }
