
import os, glob, sys
import shutil

def move_to_plex(plex_dir):
    
    for d in os.walk('.'):
        dir = d[0]
        f = []
        for ext in ['mkv', 'mp4']:
            temp_dir = dir[2:]
            pat = temp_dir + '/*.' + ext
            g = glob.glob(pat)
            if len(g) > 0:
                f.append(g)
        if len(f) > 0:        
            old_dir = str(os.path.dirname(str(f[0]))[2:]) + '/'
            new_dir = plex_dir
            shutil.move(old_dir, new_dir)

if __name__ == '__main__':
    plex_dir = sys.argv[1]
    print('Moving files to: ', plex_dir)
    move_to_plex(plex_dir)
