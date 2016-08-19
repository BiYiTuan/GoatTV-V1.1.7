.class Lhdp/player/AppActivity$5;
.super Ljava/lang/Thread;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/AppActivity;->DownLoadApp(Lhdp/player/AppActivity$DowningItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/AppActivity;

.field private final synthetic val$downing:Lhdp/player/AppActivity$DowningItem;


# direct methods
.method constructor <init>(Lhdp/player/AppActivity;Lhdp/player/AppActivity$DowningItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    iput-object p2, p0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    .line 465
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 468
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lhdp/javabean/AppInfo$NetApp;->downloadurl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 470
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 469
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 471
    .local v5, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 472
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 473
    .local v10, "length":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 475
    .local v9, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity;->savefolder:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity;->access$3(Lhdp/player/AppActivity;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    move-object/from16 v19, v0

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static/range {v19 .. v19}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 475
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .local v2, "ApkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 479
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    :cond_0
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "chmod 777 "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 482
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    .line 485
    .local v15, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v15, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    .end local v4    # "command":Ljava/lang/String;
    .end local v15    # "runtime":Ljava/lang/Runtime;
    :goto_0
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 492
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 493
    .local v6, "count":I
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 496
    .local v3, "buf":[B
    :cond_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 497
    .local v13, "numread":I
    add-int/2addr v6, v13

    .line 498
    int-to-float v0, v6

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 500
    .local v14, "progress":I
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 501
    .local v11, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    const/16 v17, 0x6

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 503
    iput v14, v11, Landroid/os/Message;->arg1:I

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity;->access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    if-gtz v13, :cond_3

    .line 507
    const-string v17, "send"

    const-string v18, "DOWNLOAD_COMPLETED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 509
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity;->access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    .end local v12    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 517
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 527
    .end local v2    # "ApkFile":Ljava/io/File;
    .end local v3    # "buf":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "count":I
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "length":I
    .end local v13    # "numread":I
    .end local v14    # "progress":I
    .end local v16    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 486
    .end local v11    # "message":Landroid/os/Message;
    .restart local v2    # "ApkFile":Ljava/io/File;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "length":I
    .restart local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 487
    .local v7, "e":Ljava/io/IOException;
    const-string v17, "error"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 519
    .end local v2    # "ApkFile":Ljava/io/File;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "length":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 520
    .local v7, "e":Ljava/lang/Exception;
    const-string v17, "send"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "DOWNLOAD_ERROR--"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v17, "error"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 523
    .restart local v11    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 524
    const/16 v17, 0x7

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity;->access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 514
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "ApkFile":Ljava/io/File;
    .restart local v3    # "buf":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "count":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "length":I
    .restart local v13    # "numread":I
    .restart local v14    # "progress":I
    .restart local v16    # "url":Ljava/net/URL;
    :cond_3
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity;->Exit:Z
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity;->access$15(Lhdp/player/AppActivity;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->this$0:Lhdp/player/AppActivity;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/AppActivity$5;->val$downing:Lhdp/player/AppActivity$DowningItem;

    move-object/from16 v18, v0

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v18, "stop"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v17

    if-eqz v17, :cond_1

    goto/16 :goto_1
.end method
