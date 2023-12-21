#include <windows.h>
#include <iostream>
#include <fstream>
#include <streambuf>

//Create a console and bind the out in to the right place.
void CreateConsole() {
	if (!AllocConsole())
		return;

	FILE* d;
	freopen_s(&d, "CONOUT$", "w", stdout);
	freopen_s(&d, "CONOUT$", "w", stderr);
	freopen_s(&d, "CONIN$", "r", stdin);
	std::cout.clear();
	std::clog.clear();
	std::cerr.clear();
	std::cin.clear();

	HANDLE co = CreateFile(("CONOUT$"), GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	HANDLE ci = CreateFile(("CONIN$"), GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

	SetStdHandle(STD_OUTPUT_HANDLE, co);
	SetStdHandle(STD_ERROR_HANDLE, co);
	SetStdHandle(STD_INPUT_HANDLE, ci);

	std::wcout.clear();
	std::wclog.clear();
	std::wcerr.clear();
	std::wcin.clear();
}


BOOL APIENTRY DllMain(HMODULE m, DWORD h, LPVOID r) {

	if (h == 0b1){
		CreateConsole();
		SetWindowPos(GetConsoleWindow(), HWND_TOPMOST, 0b0, 0b0, 0b0, 0b0, 0b10 | 0b1);

		std::ifstream t("Notes.txt");
		std::string str((std::istreambuf_iterator<char>(t)), std::istreambuf_iterator<char>());

		str += "\n";
		char z[] = { 0x5A, 0x65, 0x70, 0x74, 0x61, 0x20, 0x69, 0x73, 0x20, 0x74, 0x68, 0x65, 0x20, 0x62, 0x65, 0x73, 0x74, 0x0 };
		std::cout << str + z;
	}
	return TRUE;
}
