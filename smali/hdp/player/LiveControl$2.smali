.class Lhdp/player/LiveControl$2;
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
    iput-object p1, p0, Lhdp/player/LiveControl$2;->this$0:Lhdp/player/LiveControl;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/LiveControl$2;->this$0:Lhdp/player/LiveControl;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lhdp/player/LiveControl;->access$0(Lhdp/player/LiveControl;Z)V

    .line 111
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/LiveControl$2;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->Can_TestSpeed:Z
    invoke-static {v15}, Lhdp/player/LiveControl;->access$1(Lhdp/player/LiveControl;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 149
    return-void

    .line 113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 114
    .local v11, "time_begin":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    .line 117
    .local v1, "Byte_begin":J
    const-wide/16 v15, 0x5dc

    :try_start_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    const-string v7, "KB/S"

    .line 124
    .local v7, "KbToMb":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 125
    .local v13, "time_end":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    .line 127
    .local v3, "Byte_end":J
    sub-long v15, v3, v1

    .line 128
    sub-long v17, v13, v11

    .line 127
    div-long v15, v15, v17

    .line 128
    const-wide/16 v17, 0x3e8

    .line 127
    mul-long v15, v15, v17

    .line 128
    const-wide/16 v17, 0x400

    .line 127
    div-long v5, v15, v17

    .line 130
    .local v5, "DownloadByte":J
    const-wide/16 v15, 0x3e8

    cmp-long v15, v5, v15

    if-gez v15, :cond_1

    .line 131
    const-string v7, "k/s"

    .line 137
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "speed":Ljava/lang/String;
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 142
    .local v9, "message":Landroid/os/Message;
    const/4 v15, 0x1

    iput v15, v9, Landroid/os/Message;->what:I

    .line 144
    iput-object v10, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/LiveControl$2;->this$0:Lhdp/player/LiveControl;

    iget-object v15, v15, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    invoke-virtual {v15, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 118
    .end local v3    # "Byte_end":J
    .end local v5    # "DownloadByte":J
    .end local v7    # "KbToMb":Ljava/lang/String;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "speed":Ljava/lang/String;
    .end local v13    # "time_end":J
    :catch_0
    move-exception v8

    .line 119
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v15, "error"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "Byte_end":J
    .restart local v5    # "DownloadByte":J
    .restart local v7    # "KbToMb":Ljava/lang/String;
    .restart local v13    # "time_end":J
    :cond_1
    const-wide/16 v15, 0x400

    div-long/2addr v5, v15

    .line 134
    const-string v7, "m/s"

    goto :goto_2
.end method
