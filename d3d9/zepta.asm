IFNDEF RAX
.MODEL FLAT, C
ENDIF 

 COMMENT @

OLD CODE THATS USED AND MABY NOT WORKING SINCE ITS FROM ANOTHER PROJECT


EXTERNDEF OrignalD3DPERF_BeginEvent:PROC
EXTERNDEF OrignalD3DPERF_EndEvent:PROC
EXTERNDEF OrignalD3DPERF_GetStatus:PROC
EXTERNDEF OrignalD3DPERF_QueryRepeatFrame:PROC
EXTERNDEF OrignalD3DPERF_SetMarker:PROC
EXTERNDEF OrignalD3DPERF_SetOptions:PROC
EXTERNDEF OrignalD3DPERF_SetRegion:PROC
EXTERNDEF OrignalDebugSetLevel:PROC
EXTERNDEF OrignalDebugSetMute:PROC
EXTERNDEF OrignalDirect3D9EnableMaximizedWindowedModeShim:PROC
EXTERNDEF OrignalDirect3DCreate9:PROC
EXTERNDEF OrignalDirect3DCreate9Ex:PROC
EXTERNDEF OrignalDirect3DCreate9On12:PROC
EXTERNDEF OrignalDirect3DCreate9On12Ex:PROC
EXTERNDEF OrignalDirect3DShaderValidatorCreate9:PROC
EXTERNDEF OrignalPSGPError:PROC
EXTERNDEF OrignalPSGPSampleTexture:PROC
.CODE


FakeD3DPERF_BeginEvent PROC
	jmp[OrignalD3DPERF_BeginEvent]
	
FakeD3DPERF_BeginEvent ENDP

FakeD3DPERF_EndEvent PROC
	jmp[OrignalD3DPERF_EndEvent]

FakeD3DPERF_EndEvent ENDP

FakeD3DPERF_GetStatus PROC
	jmp[OrignalD3DPERF_GetStatus]
FakeD3DPERF_GetStatus ENDP

FakeD3DPERF_QueryRepeatFrame PROC
	jmp[OrignalD3DPERF_QueryRepeatFrame]
	ret
FakeD3DPERF_QueryRepeatFrame ENDP


FakeD3DPERF_SetMarker PROC
	jmp[OrignalD3DPERF_SetMarker]
	ret
FakeD3DPERF_SetMarker ENDP

FakeD3DPERF_SetOptions PROC
	jmp[OrignalD3DPERF_SetOptions]
	ret
FakeD3DPERF_SetOptions ENDP


FakeD3DPERF_SetRegion PROC
	jmp[OrignalD3DPERF_SetRegion]
	ret
FakeD3DPERF_SetRegion ENDP

FakeDebugSetLevel PROC
	jmp[OrignalDebugSetLevel]
	ret
FakeDebugSetLevel ENDP


FakeDebugSetMute PROC
	jmp[OrignalDebugSetMute]
	ret
FakeDebugSetMute ENDP


FakeDirect3D9EnableMaximizedWindowedModeShim PROC
	jmp[OrignalDirect3D9EnableMaximizedWindowedModeShim]
	ret
FakeDirect3D9EnableMaximizedWindowedModeShim ENDP

FakeDirect3DCreate9 PROC
	jmp[OrignalDirect3DCreate9]
	ret
FakeDirect3DCreate9 ENDP


FakeDirect3DCreate9Ex PROC
	jmp[OrignalDirect3DCreate9Ex]
	ret
FakeDirect3DCreate9Ex ENDP



FakeDirect3DCreate9On12 PROC
	jmp[OrignalDirect3DCreate9On12]
	ret
FakeDirect3DCreate9On12 ENDP



FakeDirect3DCreate9On12Ex PROC
	jmp[OrignalDirect3DCreate9On12Ex]
	ret
FakeDirect3DCreate9On12Ex ENDP

FakeDirect3DShaderValidatorCreate9 PROC
	jmp[OrignalDirect3DShaderValidatorCreate9]
	ret
FakeDirect3DShaderValidatorCreate9 ENDP


FakePSGPError PROC
	jmp[OrignalPSGPError]
	ret
FakePSGPError ENDP

FakePSGPSampleTexture PROC
	jmp[OrignalPSGPSampleTexture]
	ret
FakePSGPSampleTexture ENDP

@
END

