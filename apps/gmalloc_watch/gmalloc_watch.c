#include <gtk/gtk.h>


int main(int argc, char *argv[])
{
    gchar *mem[1000000];
    gint i;
    for(i=0;i<100;i++){
        mem[i]=g_malloc(50);
    }
    for(i=0;i<100;i++){
         g_free(mem[i]);
    }
    return 0;
}
