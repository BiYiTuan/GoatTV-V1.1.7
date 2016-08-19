.class Lhdp/player/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/BaseActivity;


# direct methods
.method constructor <init>(Lhdp/player/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/BaseActivity$2;->this$0:Lhdp/player/BaseActivity;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "TVBUS"

    .line 552
    const-string v1, "--info--prepareTimeOutRunnable-\u8d85\u65f6\u7f13\u51b2-retry--again\uff0d\uff0d>"

    .line 551
    invoke-static {v0, v1}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lhdp/player/BaseActivity$2;->this$0:Lhdp/player/BaseActivity;

    iget-object v0, v0, Lhdp/player/BaseActivity;->tvBusHandler:Landroid/os/Handler;

    const/16 v1, 0x3d5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    iget-object v0, p0, Lhdp/player/BaseActivity$2;->this$0:Lhdp/player/BaseActivity;

    iget-object v0, v0, Lhdp/player/BaseActivity;->tvBusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/BaseActivity$2;->this$0:Lhdp/player/BaseActivity;

    iget-object v1, v1, Lhdp/player/BaseActivity;->call_BufOutTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method
