/*
 * rekordbox.h
 *
 *  Created on: 14 ��� 2018 �.
 *      Author: teren
 */

#ifndef REKORDBOX_H_
#define REKORDBOX_H_

#include "ff.h"

#define RBX_MAX_PATH	255
#define RBX_MAX_TQZ		1200
#define RBX_TICKS		64
#define RBX_NUM_COB		100
#define MAX_WAVESIZE 200000

typedef struct
{
	TCHAR filename[RBX_MAX_PATH]; // full filename with path
	char file[255]; // filename without path  --should be smaller than RBX_MAX_PATH
	char filetype[5]; // file extension
	uint32_t timezones; // number of time zone entries
	uint16_t bpm[RBX_MAX_TQZ]; // current bpm
	uint16_t phase[RBX_MAX_TQZ]; // current beat phase
	uint32_t timeindex[RBX_MAX_TQZ]; // time index
	uint8_t beat_grid_offset;
	uint32_t lowp_spectrum_size;
	uint32_t spectrum_size;
	uint16_t remminticks[RBX_TICKS]; // remain minutes ticks positions
	uint16_t elminticks[RBX_TICKS]; // elapsed minutes ticks positions
	uint8_t minutes; // number of minutes
	int32_t cues; // number of cuepoints
	uint32_t cue_number[RBX_NUM_COB];
	uint32_t cue_active[RBX_NUM_COB];
	int32_t cue_type[RBX_NUM_COB]; // 1 - hot cue, 0 - memory
	int32_t cue_start_position[RBX_NUM_COB];
	int32_t cue_end_position[RBX_NUM_COB];
	uint8_t cue_singleloop[RBX_NUM_COB];
	uint8_t autocue;
	int32_t currentcue;
	uint8_t state;
}RekordboxTypeDef;

uint8_t DecodeRekordboxFiles(TCHAR *path);
uint8_t GetFileName(TCHAR *path);

#endif /* REKORDBOX_H_ */
