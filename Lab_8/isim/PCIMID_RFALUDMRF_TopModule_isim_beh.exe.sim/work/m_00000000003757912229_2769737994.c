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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/jvarg/Documents/CECS341Labs/Lab_8/SE.v";
static unsigned int ng1[] = {180U, 0U};
static int ng2[] = {45, 0};
static int ng3[] = {55, 0};



static void Always_7_0(char *t0)
{
    char t4[8];
    char t16[16];
    char t17[8];
    char t27[16];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(7, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(8, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 24);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 24);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 255U);

LAB5:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 8, t14, 8);
    if (t15 == 1)
        goto LAB6;

LAB7:
LAB9:
LAB8:    xsi_set_current_line(10, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t17, 0, 8);
    t2 = (t17 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 12);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 12);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 511U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 511U);
    t6 = ((char*)((ng3)));
    t7 = (t0 + 1048U);
    t14 = *((char **)t7);
    memset(t31, 0, 8);
    t7 = (t31 + 4);
    t18 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 20);
    t23 = (t22 & 1);
    *((unsigned int *)t31) = t23;
    t24 = *((unsigned int *)t18);
    t25 = (t24 >> 20);
    t26 = (t25 & 1);
    *((unsigned int *)t7) = t26;
    xsi_vlog_mul_concat(t27, 55, 1, t6, 1U, t31, 1);
    xsi_vlogtype_concat(t16, 64, 64, 2U, t27, 55, t17, 9);
    t19 = (t0 + 1448);
    xsi_vlogvar_assign_value(t19, t16, 0, 0, 64);

LAB10:    goto LAB2;

LAB6:    xsi_set_current_line(9, ng0);
    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 5);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 5);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 524287U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 524287U);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    memset(t31, 0, 8);
    t29 = (t31 + 4);
    t32 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 23);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 >> 23);
    t38 = (t37 & 1);
    *((unsigned int *)t29) = t38;
    xsi_vlog_mul_concat(t27, 45, 1, t28, 1U, t31, 1);
    xsi_vlogtype_concat(t16, 64, 64, 2U, t27, 45, t17, 19);
    t39 = (t0 + 1448);
    xsi_vlogvar_assign_value(t39, t16, 0, 0, 64);
    goto LAB10;

}


extern void work_m_00000000003757912229_2769737994_init()
{
	static char *pe[] = {(void *)Always_7_0};
	xsi_register_didat("work_m_00000000003757912229_2769737994", "isim/PCIMID_RFALUDMRF_TopModule_isim_beh.exe.sim/work/m_00000000003757912229_2769737994.didat");
	xsi_register_executes(pe);
}
