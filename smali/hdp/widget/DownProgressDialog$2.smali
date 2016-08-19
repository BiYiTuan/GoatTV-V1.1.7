.class Lhdp/widget/DownProgressDialog$2;
.super Ljava/lang/Object;
.source "DownProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/DownProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/DownProgressDialog;


# direct methods
.method constructor <init>(Lhdp/widget/DownProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 81
    new-instance v3, Ljava/io/File;

    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    # getter for: Lhdp/widget/DownProgressDialog;->local_path:Ljava/lang/String;
    invoke-static {v12}, Lhdp/widget/DownProgressDialog;->access$0(Lhdp/widget/DownProgressDialog;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 85
    :cond_0
    const/4 v7, 0x0

    .line 86
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 88
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    # getter for: Lhdp/widget/DownProgressDialog;->down_url:Ljava/lang/String;
    invoke-static {v12}, Lhdp/widget/DownProgressDialog;->access$1(Lhdp/widget/DownProgressDialog;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 89
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 91
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 93
    .local v8, "length":I
    const/4 v2, 0x0

    .line 94
    .local v2, "count":I
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_1
    new-array v0, v12, [B

    .line 96
    .local v0, "buf":[B
    const/4 v10, 0x0

    .line 98
    .local v10, "numread":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1

    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    # getter for: Lhdp/widget/DownProgressDialog;->StopDownload:Z
    invoke-static {v12}, Lhdp/widget/DownProgressDialog;->access$2(Lhdp/widget/DownProgressDialog;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-eqz v12, :cond_2

    .line 113
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 114
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v6

    .line 121
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "length":I
    .end local v10    # "numread":I
    .end local v11    # "url":Ljava/net/URL;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 99
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "count":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "length":I
    .restart local v10    # "numread":I
    .restart local v11    # "url":Ljava/net/URL;
    :cond_2
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v12, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 100
    add-int/2addr v2, v10

    .line 101
    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    int-to-float v13, v2

    int-to-float v14, v8

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v12, v13}, Lhdp/widget/DownProgressDialog;->access$3(Lhdp/widget/DownProgressDialog;I)V

    .line 102
    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    iget-object v12, v12, Lhdp/widget/DownProgressDialog;->handler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 103
    .local v9, "message":Landroid/os/Message;
    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    # getter for: Lhdp/widget/DownProgressDialog;->progess:I
    invoke-static {v12}, Lhdp/widget/DownProgressDialog;->access$4(Lhdp/widget/DownProgressDialog;)I

    move-result v12

    iput v12, v9, Landroid/os/Message;->arg1:I

    .line 104
    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    iget-object v12, v12, Lhdp/widget/DownProgressDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 107
    .end local v0    # "buf":[B
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "numread":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 108
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string v12, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    const/4 v13, -0x1

    invoke-static {v12, v13}, Lhdp/widget/DownProgressDialog;->access$3(Lhdp/widget/DownProgressDialog;I)V

    .line 110
    iget-object v12, p0, Lhdp/widget/DownProgressDialog$2;->this$0:Lhdp/widget/DownProgressDialog;

    iget-object v12, v12, Lhdp/widget/DownProgressDialog;->handler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 114
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 115
    :catch_1
    move-exception v4

    .line 116
    const-string v12, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 113
    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 114
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 119
    :goto_4
    throw v12

    .line 115
    :catch_2
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v13, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 115
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "count":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "length":I
    .restart local v10    # "numread":I
    .restart local v11    # "url":Ljava/net/URL;
    :catch_3
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v12, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 111
    .end local v0    # "buf":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "numread":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 107
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":I
    .end local v8    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    :catch_4
    move-exception v4

    goto :goto_2
.end method
