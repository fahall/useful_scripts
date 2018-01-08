import os, glob

def dir_to_plex():
    for d in os.walk('.'):
        dir = d[0]
        #print(dir)
        f = []
        for ext in ['mkv', 'mp4']:
            temp_dir = dir[2:]
            pat = temp_dir + '/*.' + ext
            g = glob.glob(pat)
            if len(g) > 0:
                f.append(g)

        if len(f) > 0:        
            new_dir = os.path.basename(str(f[0]))[:-6]
            old_dir = os.path.dirname(str(f[0]))[2:]
            #print(f)
            #print(new_dir)
            #print(old_dir)
            os.rename(old_dir, new_dir)

if __name__ == '__main__':
    print('renaming directories to match movie file names.')
    print('Did you remember to properly format your filenames with Filebot?')
    dir_to_plex()

