.class Lhdp/player/LivePlayer$4$1;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayer$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/LivePlayer$4;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;

    invoke-static {v1}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;

    invoke-static {v2}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v2

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/player/LivePlayer;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhdp/player/LivePlayer;->access$8(Lhdp/player/LivePlayer;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lhdp/player/LivePlayer$4$1$1;

    invoke-direct {v1, p0}, Lhdp/player/LivePlayer$4$1$1;-><init>(Lhdp/player/LivePlayer$4$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1068
    return-void
.end method
