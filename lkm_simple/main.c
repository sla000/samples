#include <linux/compat.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/kallsyms.h>
#include <linux/version.h>
#include <linux/string.h>
#include <linux/security.h>
#include <linux/vmalloc.h>
#include <linux/syscalls.h>
#include <asm/pgtable.h>

int __init init(void)
{
    printk("Hello, world!\n");
    return 0;
}


void __exit cleanup(void)
{
}

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Big Brother");
MODULE_DESCRIPTION("Big Brother is watching you!");

module_init(init);
module_exit(cleanup);

