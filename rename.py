import os

for file in os.listdir('XEClient'):
    if file.endswith('.txt') and file != 'README.md':
        with open(os.path.join('XEClient', file), 'r') as f:
            lines = f.readlines()
            path_line = lines[0]
            # find the setting
            setting = None
            for line in lines:
                if '_G.ConfigSystem.onSettingChanged' in line:
                    start = line.find('"') + 1
                    end = line.find('"', start)
                    setting = line[start:end]
                    break
            # extract category from path
            if 'Components.rage' in path_line:
                category = 'rage'
            elif 'Components.visual' in path_line:
                category = 'visual'
            elif 'Components.aa' in path_line:
                category = 'antiaim'
            elif 'Components.move' in path_line:
                category = 'movement'
            else:
                category = 'other'
            # timestamp from file name
            timestamp = file.split('_')[-1].replace('.txt', '')
            # new name
            if setting:
                new_name = f"{category}_{setting}_{timestamp}.txt"
            else:
                new_name = f"{category}_unknown_{timestamp}.txt"
            os.rename(os.path.join('XEClient', file), os.path.join('XEClient', new_name))