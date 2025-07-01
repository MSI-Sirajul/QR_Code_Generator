#!/bin/bash

# ====== Color Codes ======
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# ====== Banner Function ======
show_banner() {
    clear
    echo -e "${GREEN}"
    echo -e "    ___  ____     ____ ___  ____  _____ "
    echo -e "   / _ \\|  _ \\   / ___/ _ \\|  _ \\| ____|"
    echo -e "  | | | | | |_) | |  | | | | | | | |__|"
    echo -e "  | |_| |  _ <  | |__| |_| | |_| | |___ "
    echo -e "   \\__\\_\\_| \\_\\  \\____\\___/|____/|_____|${NC}"
    echo -e "${YELLOW}        QR Code Generator by M.S.I${NC}"
    echo -e "${YELLOW}            (Termux Edition)      ${NC}"
    echo -e "${RED}      Saved To: /sdcard/QRCode-Output${NC}"
    echo -e ""
}

# ====== Create Output Directory ======
OUT_DIR="/sdcard/QRCode-Output"
mkdir -p "$OUT_DIR"

# ====== QR Encode Function ======
generate_qr() {
    text="$1"
    filename="$2"
    qrencode -s 10 -l H -o "$OUT_DIR/$filename" "$text"
}

# ====== Main Menu ======
main_menu() {
    show_banner
    echo -e "${BLUE}[1]${NC} ${GREEN}Input Text${NC}"
    echo -e "${BLUE}[2]${NC} ${GREEN}Select .txt File${NC}"
    echo -e "${BLUE}[3]${NC} ${GREEN}Locate QR Code Folder${NC}"
    echo -e "${BLUE}[0]${NC} ${RED}Exit${NC}"
    echo
    read -p "$(echo -e ${YELLOW}Select an option:${NC}) " option

    case "$option" in
        1) input_text ;;
        2) input_file ;;
        3) locate_qr_codes ;;
        0) exit 0 ;;
        *) 
            echo -e "${RED}Invalid option!${NC}"
            sleep 1
            main_menu
            ;;
    esac
}

# ====== Input Text Option ======
input_text() {
    show_banner
    echo -e "${GREEN}Enter text (type 'exit' to stop):${NC}"
    count=0
    while true; do
        read -p ">> " text
        [[ "$text" == "exit" ]] && break
        generate_qr "$text" "${count}.png"
        echo -e "${BLUE}Saved as: $OUT_DIR/${count}.png${NC}"
        ((count++))
    done
    read -p "Press Enter to return to menu..." temp
    main_menu
}

# ====== Input File Option ======
input_file() {
    show_banner
    echo -e "${GREEN}Enter the full path to your .txt file:${NC}"
    read -p ">> " filepath

    if [[ ! -f "$filepath" ]]; then
        echo -e "${RED}File not found!${NC}"
        sleep 2
        main_menu
    fi

    count=1
    while IFS= read -r line; do
        while [[ "$line" =~ \"([^\"]+)\" ]]; do
            text="${BASH_REMATCH[1]}"
            generate_qr "$text" "${count}.png"
            echo -e "${BLUE}Saved QR for \"$text\" as: $OUT_DIR/${count}.png${NC}"
            line="${line#*\"}"
            line="${line#*\"}"
            ((count++))
        done
    done < "$filepath"

    read -p "Press Enter to return to menu..." temp
    main_menu
}

# ====== Fallback Show QR List in Terminal ======
fallback_show_list() {
    show_banner
    echo -e "${YELLOW}QR Codes are here:${NC}"
    echo -e "${BLUE}Directory:${NC} $OUT_DIR"
    echo -e "${GREEN}Files:${NC}"
    ls "$OUT_DIR"/*.png 2>/dev/null || echo -e "${RED}No QR codes found.${NC}"
}

# ====== Locate QR Code Option ======
locate_qr_codes() {
    show_banner
    echo -e "${YELLOW}Trying to open QR Code folder in file manager...${NC}"

    am start -a android.intent.action.VIEW -d "content://com.android.externalstorage.documents/document/primary:QRCode-Output" > /dev/null 2>&1

    if [[ $? -eq 0 ]]; then
        echo -e "${GREEN}Opened in file manager using system intent.${NC}"
    else
        echo -e "${RED}Failed to open in file manager.${NC}"
        echo -e "${YELLOW}Fallback: Showing QR code list in terminal.${NC}"
        fallback_show_list
    fi

    read -p "Press Enter to return to menu..." temp
    main_menu
}

# ====== Start Script ======
main_menu
