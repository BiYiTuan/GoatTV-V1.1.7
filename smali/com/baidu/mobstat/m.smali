.class Lcom/baidu/mobstat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/l;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/l;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/l;

    iget-object v0, v0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    iget-object v1, p0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/l;

    iget-object v1, v1, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/l;

    iget-object v2, v2, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v2}, Lcom/baidu/mobstat/k;->d(Lcom/baidu/mobstat/k;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Z)V

    return-void
.end method
