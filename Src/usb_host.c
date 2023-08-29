/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file            : usb_host.c
  * @version         : v1.0_Cube
  * @brief           : This file implements the USB Host
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/

#include "usb_host.h"
#include "usbh_core.h"
#include "usbh_msc.h"

/* USER CODE BEGIN Includes */
#include "fatfs.h"
#include "display.h"
/* USER CODE END Includes */

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USB Host core handle declaration */
//USBH_HandleTypeDef hUsbHostHS;
USBH_HandleTypeDef hUsbHostFS;
ApplicationTypeDef Appli_HS_state = APPLICATION_IDLE;
ApplicationTypeDef Appli_FS_state = APPLICATION_IDLE;
FATFS* locUSBHfs;
TCHAR* locUSBHPath;

/*
 * -- Insert your variables declaration here --
 */
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/*
 * user callback declaration
 */
static void USBH_UserProcess1(USBH_HandleTypeDef *phost, uint8_t id);
static void USBH_UserProcess2(USBH_HandleTypeDef *phost, uint8_t id);

/*
 * -- Insert your external function declaration here --
 */
/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

/**
  * Init USB host library, add supported class and start the library
  * @retval None
  */
void MX_USB_HOST_Init(void)
{
  /* USER CODE BEGIN USB_HOST_Init_PreTreatment */

  /* USER CODE END USB_HOST_Init_PreTreatment */

  /* Init host Library, add supported class and start the library. */
 /*---- USB HS
  if (USBH_Init(&hUsbHostHS, USBH_UserProcess1, HOST_HS) != USBH_OK)
  {
	  dbgAddText("EUSBH_Init");
    Error_Handler();
  }
  if (USBH_RegisterClass(&hUsbHostHS, USBH_MSC_CLASS) != USBH_OK)
  {
	  dbgAddText("EUSBH_RegisterClass");
    Error_Handler();
  }
  if (USBH_Start(&hUsbHostHS) != USBH_OK)
  {
	  dbgAddText("EUSBH_Start");
    Error_Handler();
  }
  dbgAddText("uInitOK");

  ---*/


  /* USER CODE BEGIN USB_HOST_Init_PreTreatment */

  /* USER CODE END USB_HOST_Init_PreTreatment */

  /* Init host Library, add supported class and start the library. */
	 //dbgAddText("pre fs init");
  if (USBH_Init(&hUsbHostFS, USBH_UserProcess2, 0) != USBH_OK)
  {
	  dbgAddText("fs init");
    Error_Handler();
  }
  //dbgAddText("pre fs reg");
  if (USBH_RegisterClass(&hUsbHostFS, USBH_MSC_CLASS) != USBH_OK)
  {
	  dbgAddText("fs reg err");
    Error_Handler();
  }
  //dbgAddText("pre fs start");
  if (USBH_Start(&hUsbHostFS) != USBH_OK)
  {
	  dbgAddText("fs start err");
    Error_Handler();
  }

  /* USER CODE BEGIN USB_HOST_Init_PostTreatment */

  /* USER CODE END USB_HOST_Init_PostTreatment */
}

/*
 * Background task
 */
void MX_USB_HOST_Process(FATFS* USBHfs, const TCHAR* USBHPath)
{
  /* USB Host Background task */
  //locUSBHfs=USBHfs;
  //locUSBHPath=USBHPath;
  //handle USB enumeration
  //USBH_HandleTypeDef* locUSBDef=&hUsbHostHS;   //--- FOR USB HS

  /* --------
  USBH_HandleTypeDef* locUSBDef=&hUsbHostFS;
  while //(Appli_HS_state != APPLICATION_READY)
	  ((locUSBDef->gState != HOST_CLASS) && (locUSBDef->gState != HOST_DEV_DISCONNECTED)
		  && (locUSBDef->gState != HOST_ABORT_STATE) )
  {
	  USBH_Process(locUSBDef);
  }

  //handle MSC init
  MSC_HandleTypeDef *MSC_Handle = (MSC_HandleTypeDef *) locUSBDef->pActiveClass->pData;

  while((MSC_Handle->state != MSC_IDLE) && (MSC_Handle->state != MSC_UNRECOVERED_ERROR))
  {
	  USBH_Process(locUSBDef);
  }
----------------*/
  while //(Appli_HS_state != APPLICATION_READY)
	  ((hUsbHostFS.gState != HOST_CLASS) && (hUsbHostFS.gState != HOST_DEV_DISCONNECTED)
		  && (hUsbHostFS.gState != HOST_ABORT_STATE) )
  {
	  USBH_Process(&hUsbHostFS);
  }


  if (hUsbHostFS.gState == HOST_CLASS){
	  //handle MSC init
	  MSC_HandleTypeDef *MSC_Handle = (MSC_HandleTypeDef *) hUsbHostFS.pActiveClass->pData;
	  while((MSC_Handle->state != MSC_IDLE) && (MSC_Handle->state != MSC_UNRECOVERED_ERROR))
	  {
		  USBH_Process(&hUsbHostFS);
	  }
  }


  //USBH_Process(&hUsbHostFS);
}
/*
 * user callback definition
 */

static void USBH_UserProcess1  (USBH_HandleTypeDef *phost, uint8_t id)
{
  // USER CODE BEGIN CALL_BACK_2
	 //dbgAddText("userProc1");
  switch(id)
  {
  case HOST_USER_SELECT_CONFIGURATION:
  break;

  case HOST_USER_DISCONNECTION:
  Appli_HS_state = APPLICATION_DISCONNECT;
  break;

  case HOST_USER_CLASS_ACTIVE:
  Appli_HS_state = APPLICATION_READY;
  break;

  case HOST_USER_CONNECTION:
  Appli_HS_state = APPLICATION_START;
  break;

  default:
  break;
  }
  // USER CODE END CALL_BACK_2
}


static void USBH_UserProcess2  (USBH_HandleTypeDef *phost, uint8_t id)
{
  /* USER CODE BEGIN CALL_BACK_21 */
	//dbgAddText("userProc2");
  switch(id)
  {
  case HOST_USER_SELECT_CONFIGURATION:
	  //dbgAddText("userPrCFG");
  break;

  case HOST_USER_DISCONNECTION:
  Appli_FS_state = APPLICATION_DISCONNECT;
  dbgAddText("userPrDisconn");
  /*
  if (f_mount(NULL, "", 0) != FR_OK)
  {
    //LCD_ErrLog("ERROR : Cannot DeInitialize FatFs! \n");
    DrawString("ERROR! Cannot DeInitialize USB_FS FatFs!", 0, 20, 0x00FFFFFF, 0x00FF0000);
  }
  if (FATFS_UnLinkDriver((TCHAR const*) locUSBHPath) != 0)
  {
    //LCD_ErrLog("ERROR : Cannot UnLink USB FatFS Driver! \n");
    DrawString("ERROR! Cannot UnLink USB_FS FatFs!", 0, 20, 0x00FFFFFF, 0x00FF0000);
  }*/
  break;

  case HOST_USER_CLASS_ACTIVE:
  Appli_FS_state = APPLICATION_READY;
  dbgAddText("userPrRDY");
  break;

  case HOST_USER_CONNECTION:
  Appli_FS_state = APPLICATION_START;
  dbgAddText("userPrStart");
  /*
  if (FATFS_LinkDriver(&USBH_Driver, (TCHAR const*) locUSBHPath) == 0)
  {
    if (f_mount(&locUSBHfs, "", 0) != FR_OK)
    {
      //LCD_ErrLog("ERROR : Cannot Initialize FatFs! \n");
      DrawString("ERROR! Cannot Initialize USB_FS FatFs!", 0, 20, 0x00FFFFFF, 0x00FF0000);
    }
  }*/
  break;

  default:
  break;
  }
  /* USER CODE END CALL_BACK_21 */
}

/**
  * @}
  */

/**
  * @}
  */

