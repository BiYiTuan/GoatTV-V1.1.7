.class Lcom/baidu/mobstat/n;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/k;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/n;->b:Lcom/baidu/mobstat/k;

    iput-object p2, p0, Lcom/baidu/mobstat/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/DataCore;->isPartEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/n;->b:Lcom/baidu/mobstat/k;

    iget-object v1, p0, Lcom/baidu/mobstat/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/n;->b:Lcom/baidu/mobstat/k;

    invoke-static {v2}, Lcom/baidu/mobstat/k;->d(Lcom/baidu/mobstat/k;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
