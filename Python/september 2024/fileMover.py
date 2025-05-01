import os
import shutil as sh
import regex as rg

src = '/Users/xanderfrey/Desktop'
dst = src+'/Screenshots'

# allfiles = os.listdir(src)

'''
for f in src:
	if filename == regex.match(screenShotRegularExpression):
		screenShots.append(filename)
'''
# Screenshot\s+\d{4}-\d{2}-\d{2}\s+at\s+\d{1,2}\.\d{2}\.\d{2}\s+(AM|PM)
screenShots = []

for f in screenShots:
	src_path = os.path.join(src, f)
	dst_path = os.path.join(dst, f)
	sh.move(src_path, dst_path)

'''
sort by date
sort in the subfolders into folders of "this week", "24 hours", "last 30 days", "prior"
dump the stored screenshots into the relevant folders
'''