.class Lhdp/player/LiveControl$5;
.super Ljava/lang/Object;
.source "LiveControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LiveControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveControl;


# direct methods
.method constructor <init>(Lhdp/player/LiveControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveControl$5;->this$0:Lhdp/player/LiveControl;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lhdp/player/LiveControl$5;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->flag:I
    invoke-static {v0}, Lhdp/player/LiveControl;->access$6(Lhdp/player/LiveControl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lhdp/player/LiveControl$5;->this$0:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lhdp/player/LiveControl$5;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveControl$5;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->hide:Ljava/lang/Runnable;
    invoke-static {v1}, Lhdp/player/LiveControl;->access$7(Lhdp/player/LiveControl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
