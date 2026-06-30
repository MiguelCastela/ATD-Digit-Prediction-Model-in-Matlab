# Spoken Digit Prediction Model (MATLAB)

A signal-processing pipeline that classifies spoken digits (0–9) from audio
recordings. Built for the **Data Analysis and Transformation (ATD)** course,
in the 2nd year, 2nd semester of the BSc in Informatics Engineering at the
University of Coimbra.

The project moves from raw audio to a working classifier across four
milestones, progressively extracting time-domain, frequency-domain, and
time-frequency features and feeding them into a digit-prediction model.

## Dataset

The [`Audios/`](Audios) folder holds **500 recordings**: 50 utterances for
each of the digits 0–9, sampled at 48 kHz. Files follow the naming pattern
`<digit>_40_<index>.wav` (e.g. `7_40_12.wav`).

## Pipeline / Milestones

| Folder | Focus | What it does |
| --- | --- | --- |
| [`01-Time-Domain-Analysis`](01-Time-Domain-Analysis) | Time domain | Preprocesses the signals (silence removal, normalization, padding) and analyzes waveforms, zero-crossing rate, energy, and fundamental frequency. |
| [`02-Frequency-Domain-Analysis`](02-Frequency-Domain-Analysis) | Frequency domain | Computes FFT amplitude spectra with different window functions and extracts spectral features (spread, skewness, edge frequency); visualizes them with boxplots and scatter plots. |
| [`03-Spectrogram-Analysis`](03-Spectrogram-Analysis) | Time-frequency | Uses the short-time Fourier transform (spectrograms) to derive time-varying features (spectral contrast, roll-off, flatness, and flux) and explores them in 2D/3D. |
| [`04-Classification-Model`](04-Classification-Model) | Classification | Combines the most discriminative features from the previous milestones to predict the spoken digit and reports the model's accuracy. |

Each milestone folder contains a MATLAB Live Script (`.mlx`), a rendered
`.pdf` report, and the helper functions it relies on.

## Shared helper functions

These signal-processing utilities are reused across milestones:

- `removeSilence.m`: trims leading/trailing silence using an energy threshold
- `normalizeSignal.m`: scales a signal to its maximum amplitude
- `fillSilence.m`: pads a signal with silence to a fixed duration
- `padWithZeros.m`: zero-pads signals to a common length
- `getDataMatrix.m`: builds the FFT amplitude-spectrum matrix for all recordings
- `spectral_*.m`: spectral feature extractors (spread, skewness, contrast, roll-off, flatness, flux, edge frequency)
- `plotBoxplots.m`, `plotScatterplots.m`, `plot3DScatterPlot.m`: visualization helpers

## Requirements

- MATLAB (R2021a or newer recommended)
- Signal Processing Toolbox

## How to run

1. Open MATLAB and set the project root as the current folder (so the
   `Audios/` path resolves correctly).
2. Open the `.mlx` script in the milestone you want to run.
3. Run the Live Script section by section to reproduce the figures and results.

## Report

The full project report is available in
[`Relatorio_ATD_final.pdf`](Relatorio_ATD_final.pdf).

## Authors

- Miguel Castela
- Miguel Martins
