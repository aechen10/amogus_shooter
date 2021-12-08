from PIL import Image
from collections import Counter
from scipy.spatial import KDTree
import numpy as np
def hex_to_rgb(num):
    h = str(num)
    return int(h[0:4], 16), int(('0x' + h[4:6]), 16), int(('0x' + h[6:8]), 16)
def rgb_to_hex(num):
    h = str(num)
    return int(h[0:4], 16), int(('0x' + h[4:6]), 16), int(('0x' + h[6:8]), 16)
filename = input("What's the image name? ")
new_w, new_h = map(int, input("What's the new height x width? Like 28 28. ").split(' '))

#palette_hex = ['0xFF69B4', '0x242424', '0xD4D4D7', '0x800000', '0x9B3110', '0xDF6E4A', '0x2C2C23', '0x22282B', '0xF03400'] #Megaphone
#palette_hex = ['0xFF69B4', '0x000000', '0xB00000', '0xC3BC1D', '0xFFD308', '0x004500', '0x37F6D4', '0x435A63', '0x98CADD'] #Cyan imposter
#palette_hex = ['0xFF69B4', '0x000000', '0xF7F7F7', '0x232323', '0x510101', '0xD7230F', '0x9F0203', '0x420B06', '0x5C5D5C'] #Red imposter
#palette_hex = ['0xFF69B4', '0x000000', '0xE4F1F6', '0xEEDC02', '0x3A4D55', '0x8DBFD0', '0x7C8CB4', '0xDAA701', '0x677495'] #White imposter
#palette_hex = ['0xFF69B4', '0x000000', '0xEAF4F8', '0xC25202', '0xDABE3D', '0x8B8B32', '0x284E24', '0x425B64', '0xA1CCDE'] #Yellow imposter
palette_hex = ['0xFF69B4', '0x000000', '0xD8EDFA', '0x8D715A', '0x52966C', '0x6FA4C0', '0x3A5057', '0x2B3C32', '0x8FC9A6'] #Yoda imposter

palette_rgb = [hex_to_rgb(color) for color in palette_hex]

pixel_tree = KDTree(palette_rgb)
im = Image.open("./sprite_originals/" + filename+ ".png") #Can be many different formats.
im = im.convert("RGBA")
layer = Image.new('RGBA',(new_w, new_h), (0,0,0,0))
layer.paste(im, (0, 0))
im = layer
#im = im.resize((new_w, new_h),Image.ANTIALIAS) # regular resize
pix = im.load()
pix_freqs = Counter([pix[x, y] for x in range(im.size[0]) for y in range(im.size[1])])
pix_freqs_sorted = sorted(pix_freqs.items(), key=lambda x: x[1])
pix_freqs_sorted.reverse()
print(pix)
outImg = Image.new('RGB', im.size, color='white')
outFile = open("./sprite_bytes/" + filename + '.txt', 'w')
i = 0
for y in range(im.size[1]):
    for x in range(im.size[0]):
        pixel = im.getpixel((x,y))
        print(pixel)
        if(pixel[3] < 200):
            outImg.putpixel((x,y), palette_rgb[0])
            outFile.write("%x\n" %(0))
            print(i)
        else:
            index = pixel_tree.query(pixel[:3])[1]
            outImg.putpixel((x,y), palette_rgb[index])
            outFile.write("%x\n" %(index))
        i += 1
outFile.close()
outImg.save("./sprite_converted/" + filename + ".png" )
