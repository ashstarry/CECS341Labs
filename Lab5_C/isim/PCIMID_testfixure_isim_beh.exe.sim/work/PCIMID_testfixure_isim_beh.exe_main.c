/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003065592373_1527366053_init();
    work_m_00000000000362325890_1733832700_init();
    work_m_00000000003162421051_0467708899_init();
    work_m_00000000001528637952_1648104263_init();
    work_m_00000000001544094395_0198226322_init();
    work_m_00000000001870258217_0820440955_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001870258217_0820440955");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
