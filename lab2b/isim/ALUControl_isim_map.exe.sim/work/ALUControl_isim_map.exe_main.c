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
    simprims_ver_m_00000000003359274523_2662658903_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    simprims_ver_m_00000000000648012491_3151998091_init();
    simprims_ver_m_00000000001867363923_1692233196_init();
    simprims_ver_u_00000000002212670773_1323274903_init();
    simprims_ver_m_00000000001160127574_0897309690_init();
    simprims_ver_m_00000000003598591109_0274380137_init();
    simprims_ver_m_00000000003598591109_0769604787_init();
    simprims_ver_m_00000000003598591109_1530284962_init();
    simprims_ver_m_00000000003598591109_0445167884_init();
    simprims_ver_m_00000000003598591109_3256702861_init();
    simprims_ver_m_00000000003598591109_3297425040_init();
    simprims_ver_m_00000000003598591109_2371179551_init();
    simprims_ver_m_00000000003598591109_1943168699_init();
    simprims_ver_m_00000000003598591109_3674629836_init();
    simprims_ver_m_00000000000126354981_1080494567_init();
    work_m_00000000000325060656_4231019343_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000325060656_4231019343");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
