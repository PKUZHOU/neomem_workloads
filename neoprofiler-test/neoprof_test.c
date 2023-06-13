#include <stdio.h>
#include <stdint.h>
#include "mmio.h"

#define NEOPROF_ADDR 0x1180000000L

void get_hotness_info(){
    uint32_t last_phyaddr = reg_read32(NEOPROF_ADDR + 0x00);
    printf("last_phyaddr: %x\n", last_phyaddr);
}

int main(){
    get_hotness_info();
}
