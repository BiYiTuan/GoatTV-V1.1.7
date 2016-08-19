.class Lhdp/player/Bangding$3;
.super Ljava/lang/Object;
.source "Bangding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/Bangding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/Bangding;


# direct methods
.method constructor <init>(Lhdp/player/Bangding;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/Bangding$3;->this$0:Lhdp/player/Bangding;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lhdp/player/Bangding$3;->this$0:Lhdp/player/Bangding;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lhdp/player/Bangding;->access$5(Lhdp/player/Bangding;I)V

    .line 174
    iget-object v1, p0, Lhdp/player/Bangding$3;->this$0:Lhdp/player/Bangding;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhdp/player/Bangding;->access$1(Lhdp/player/Bangding;Z)V

    .line 175
    :goto_0
    iget-object v1, p0, Lhdp/player/Bangding$3;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->HasTime:Z
    invoke-static {v1}, Lhdp/player/Bangding;->access$6(Lhdp/player/Bangding;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lhdp/player/Bangding$3;->this$0:Lhdp/player/Bangding;

    iget-object v1, v1, Lhdp/player/Bangding;->handler:Landroid/os/Handler;

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    iget-object v1, p0, Lhdp/player/Bangding$3;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->i:I
    invoke-static {v1}, Lhdp/player/Bangding;->access$0(Lhdp/player/Bangding;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lhdp/player/Bangding;->access$5(Lhdp/player/Bangding;I)V

    .line 179
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
