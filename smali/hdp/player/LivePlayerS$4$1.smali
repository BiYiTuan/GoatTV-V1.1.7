.class Lhdp/player/LivePlayerS$4$1;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayerS$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/LivePlayerS$4;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1031
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    invoke-static {v1}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    invoke-static {v2}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v2

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/player/LivePlayerS;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhdp/player/LivePlayerS;->access$7(Lhdp/player/LivePlayerS;Ljava/lang/String;)V

    .line 1032
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "live url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    invoke-static {v2}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v2

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lhdp/player/LivePlayerS$4$1$1;

    invoke-direct {v1, p0}, Lhdp/player/LivePlayerS$4$1$1;-><init>(Lhdp/player/LivePlayerS$4$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1048
    return-void
.end method
