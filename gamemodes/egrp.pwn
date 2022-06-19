/*

						License Copyright 2014 EG-RP Script Team.

			Licensed under the Apache License, Version 2.0 (the "License");
			You may not use this file except in compliance with the License.
			You may obtain a copy of the License at

				http://www.apache.org/licenses/LICENSE-2.0

			Unless required by applicable law or agreed to in writing, software
			distributed under the License is distributed on an "AS IS" BASIS,
			WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
			See the License for the specific language governing permissions and
			limitations under the License.

			  SCRIPT NAME: EG-RP

			  Evolution Gaming Script Team & Website Dev Team:

			 *dacrimnar - fb.com/dacrimnar [Leader Scripter | Server Owner]

		  ADDITIONAL CREDITS:
		      NGG Version 2009 [Script Base],
		      Incognito [Objects streamer],
		      SA-MP Team.
*/
//Chuc anh em ngon mien co gi thac mac lien he fb.com/dacrimnar

#define SERVER_GM_TEXT "[EG]:RP v2.825"

#include <a_samp>
#include <a_mysql>	
#include <streamer>
#include <yom_buttons>		
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <YSI\y_ini>
#include <progress2>
#include <progress>
#include <a_actor>

#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "./includes/base.pwn"

main() {}

public OnGameModeInit()
{
	print("Dang chuan bi tai gamemode, xin vui long cho doi...");
	SetGameModeText(SERVER_GM_TEXT);
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}


