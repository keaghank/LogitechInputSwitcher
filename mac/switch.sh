#!/bin/bash

# # KYB_CH = channel on unifying receiver for the destination keyboard. Typically maps to the 1 minus the key # you press to switch keyboards
# KYB_CH=0x00
# # KYB_ID = ID of the keyboard (typically this maps to the order of keyboard devices you see in the unifying software app in Advanced settings)
# KYB_ID=0x03
# 
# # MSE_CH = channel on unifying receiver for the destination mouse. Typically maps 1 minus the channel button you press on the mouse to switch
# MSE_CH=0x00
# # MSE_ID = ID of the mouse (typically this maps to the order of mouse devices you see in the unifying software app in Advanced settings)
# MSE_ID=0x02
# 
# # These typically don't change, but tap Apple menu->About This Mac->System Report->USB->USB Receiver for Logitech 
# # and make sure Product ID (RCVR_PID) and Vendor ID (RCVR_VID) are accurate 
# RCVR_VID=046D
# RCVR_PID=C52B

# # Switch MX Keys to other device
#                                                                                                                  A        B    C    D       E       F    G
# #Receiver
# sudo hidapitester --vidpid ${RCVR_VID}:${RCVR_PID} --usage 0x0001 --usagePage 0xFF00 --open --length 7 --send-output 0x10,${KYB_ID},0x09,0x1e,${KYB_CH},0x00,0x00
# 
# #Channel 1
# sudo hidapitester --vidpid 046D:B361 --usage 0x0202 --usagePage 0xFF43 --open --length 20 --send-output 0x11,0x00,0x09,0x1E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

#Channel 2
hidapitester --vidpid 046D:B361 --usage 0x0202 --usagePage 0xFF43 --open --length 20 --send-output 0x11,0x00,0x09,0x1E,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

# # Switch MX Mouse to other device
# #                                                                                                                 A       B       C   D       E      F    G
# #Receiver
# sudo hidapitester --vidpid ${RCVR_VID}:${RCVR_PID} --usage 0x0001 --usagePage 0xFF00 --open --length 7 --send-output 0x10,${MSE_ID},0x0a,0x1b,${MSE_CH},0x00,0x00
# 
# #Channel 1
# sudo hidapitester --vidpid 046D:B025 --usage 0x0202 --usagePage 0xFF43 --open --length 20 --send-output 0x11,0x00,0x0A,0x1E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

#Channel 2
hidapitester --vidpid 046D:B025 --usage 0x0202 --usagePage 0xFF43 --open --length 20 --send-output 0x11,0x00,0x0A,0x1E,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

exit 0

# I have the same script on my other device but with different CH/IDs
# KYB_CH=0x01
# MSE_CH=0x01
# KYB_ID=0x03
# MSE_ID=0x01



