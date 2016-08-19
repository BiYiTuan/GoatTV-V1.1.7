.class Lcom/baidu/mobstat/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/q;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/q;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/w;->g:I

    iput-wide p2, p0, Lcom/baidu/mobstat/w;->b:J

    iput-wide p4, p0, Lcom/baidu/mobstat/w;->c:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/w;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/w;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/w;->f:Ljava/lang/ref/WeakReference;

    iput p9, p0, Lcom/baidu/mobstat/w;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/baidu/mobstat/w;->c:J

    iget-wide v2, p0, Lcom/baidu/mobstat/w;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    invoke-virtual {v2}, Lcom/baidu/mobstat/q;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/baidu/mobstat/w;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/w;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/w;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    invoke-static {v0}, Lcom/baidu/mobstat/q;->a(Lcom/baidu/mobstat/q;)Lcom/baidu/mobstat/o;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/mobstat/w;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/o;->b(J)V

    iget-object v0, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    invoke-static {v0}, Lcom/baidu/mobstat/q;->a(Lcom/baidu/mobstat/q;)Lcom/baidu/mobstat/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/o;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/baidu/mobstat/w;->g:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/w;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    move-object v1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    invoke-static {v0}, Lcom/baidu/mobstat/q;->a(Lcom/baidu/mobstat/q;)Lcom/baidu/mobstat/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/o;->b()V

    iget v0, p0, Lcom/baidu/mobstat/w;->g:I

    if-ne v0, v4, :cond_5

    iget-object v2, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    iget-object v0, p0, Lcom/baidu/mobstat/w;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/q;->a(Lcom/baidu/mobstat/q;Landroid/content/Context;)V

    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/baidu/mobstat/w;->g:I

    if-ne v0, v5, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/mobstat/w;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/baidu/mobstat/w;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/q;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    move-object v1, v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/baidu/mobstat/w;->g:I

    if-ne v0, v5, :cond_6

    iget-object v2, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    iget-object v0, p0, Lcom/baidu/mobstat/w;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mobstat/q;->a(Lcom/baidu/mobstat/q;Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/q;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/q;->a(Lcom/baidu/mobstat/q;Landroid/content/Context;)V

    goto :goto_1
.end method
