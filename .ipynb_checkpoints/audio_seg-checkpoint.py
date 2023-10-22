import librosa
import numpy as np
import os
import soundfile

unedit_Q = os.path.join('data', 'unedited', 'Q')
unedit_W = os.path.join('data', 'unedited', 'W')
unedit_E = os.path.join('data', 'unedited', 'E')
unedit_R = os.path.join('data', 'unedited', 'R')

audio, sample_rate = librosa.load(unedit_Q + '.wav')

onsets = librosa.onset.onset_detect(y=audio, sr=sample_rate)
offsets = librosa.onset.onset_detect(y=audio[::-1], sr=sample_rate)[::-1]

segments = []
for i in range(len(onsets)):
    segment = audio[onsets[i]:offsets[i]]
    segments.append(segment)

save_dir = "data/parsed/Q"

for i in range(len(segments)):
    filename = f"keystroke_{i}.wav"
    filepath = os.path.join(save_dir, filename)

    soundfile.write(filepath, segments[i], sample_rate)
