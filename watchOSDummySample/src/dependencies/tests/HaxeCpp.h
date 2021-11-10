#ifndef _HAXECPP_H_
#define _HAXECPP_H_

#include "./CppClass.h"

void CPP_ShowMessage(const char *message);
CppClass* CPP_CreateObject();

#endif

//CppClass.h
#ifndef _CPP_CLASS_
#define _CPP_CLASS_

class CppClass
{
public:
	CppClass(void);
	~CppClass(void);

	void showMessage(const char *message);
};

#endif