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
    work_m_00000000001382016704_4231019343_init();
    work_m_00000000001449802435_3717951388_init();
    work_m_00000000004225503803_2137181695_init();
    work_m_00000000000124112270_1661724263_init();
    work_m_00000000000357234910_0047797951_init();
    work_m_00000000003515504379_2363179440_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003515504379_2363179440");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}