.class Lcom/baidu/mobstat/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/k;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    iput-object p2, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->loadExceptionTurn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/k;->a(Lcom/baidu/mobstat/k;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v0}, Lcom/baidu/mobstat/k;->a(Lcom/baidu/mobstat/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/i;->a()Lcom/baidu/mobstat/i;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/i;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v0}, Lcom/baidu/mobstat/k;->b(Lcom/baidu/mobstat/k;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v0}, Lcom/baidu/mobstat/k;->b(Lcom/baidu/mobstat/k;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/k;->a(Lcom/baidu/mobstat/k;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->loadSendStrategy(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/k;->a(Lcom/baidu/mobstat/k;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->loadSendStrategyTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/k;->a(Lcom/baidu/mobstat/k;I)I

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->loadOnlyWifiChannel(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/k;->b(Lcom/baidu/mobstat/k;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v0}, Lcom/baidu/mobstat/k;->c(Lcom/baidu/mobstat/k;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    iget-object v1, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/k;->d(Landroid/content/Context;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/k;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/m;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/m;-><init>(Lcom/baidu/mobstat/l;)V

    iget-object v2, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v2}, Lcom/baidu/mobstat/k;->e(Lcom/baidu/mobstat/k;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    invoke-static {v0}, Lcom/baidu/mobstat/k;->c(Lcom/baidu/mobstat/k;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Lcom/baidu/mobstat/k;

    iget-object v1, p0, Lcom/baidu/mobstat/l;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/k;->d(Landroid/content/Context;)V

    goto :goto_0
.end method
