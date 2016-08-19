.class public Lhdp/widget/VitamioSoDownloadDialog;
.super Ljava/lang/Object;
.source "VitamioSoDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DOWNLOAD_COMPLETED:I

.field private Isok:Z

.field private final SendProgess:I

.field private StopDownload:Z

.field private final UN_ZIP_COMPLETED:I

.field private dialog:Landroid/app/Dialog;

.field private dialogBuilder:Lhdp/widget/CustomDialogBuilder;

.field private down_url:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private local_path:Ljava/lang/String;

.field onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

.field private progess:I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "VitamioSoDownloadDialog"

    sput-object v0, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "down_url"    # Ljava/lang/String;
    .param p3, "local_path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->StopDownload:Z

    .line 32
    iput-boolean v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->Isok:Z

    .line 93
    iput v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->SendProgess:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->DOWNLOAD_COMPLETED:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->UN_ZIP_COMPLETED:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lhdp/widget/VitamioSoDownloadDialog$1;

    invoke-direct {v1, p0}, Lhdp/widget/VitamioSoDownloadDialog$1;-><init>(Lhdp/widget/VitamioSoDownloadDialog;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->handler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lhdp/widget/VitamioSoDownloadDialog$2;

    invoke-direct {v0, p0}, Lhdp/widget/VitamioSoDownloadDialog$2;-><init>(Lhdp/widget/VitamioSoDownloadDialog;)V

    iput-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->runnable:Ljava/lang/Runnable;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    .line 40
    iput-object p2, p0, Lhdp/widget/VitamioSoDownloadDialog;->down_url:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lhdp/widget/VitamioSoDownloadDialog;->local_path:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lhdp/widget/VitamioSoDownloadDialog;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lhdp/widget/VitamioSoDownloadDialog;II)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lhdp/widget/VitamioSoDownloadDialog;->setProgress(II)V

    return-void
.end method

.method static synthetic access$1(Lhdp/widget/VitamioSoDownloadDialog;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->progess:I

    return v0
.end method

.method static synthetic access$2(Lhdp/widget/VitamioSoDownloadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/widget/VitamioSoDownloadDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lhdp/widget/VitamioSoDownloadDialog;->download(Ljava/lang/String;)V

    return-void
.end method

.method private deleteBaiduSo()V
    .locals 5

    .prologue
    .line 195
    invoke-static {}, Lhdp/http/MyApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "soPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "libcyberplayer.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "fileCyber":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    const-string v4, "libcyberplayer-core.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "fileCyberCore":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 202
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    :cond_1
    return-void
.end method

.method private download(Ljava/lang/String;)V
    .locals 17
    .param p1, "down_url"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->local_path:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 133
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_0
    const/4 v9, 0x0

    .line 136
    .local v9, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 138
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 140
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 142
    .local v10, "length":I
    const/4 v3, 0x0

    .line 143
    .local v3, "count":I
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/widget/VitamioSoDownloadDialog;->local_path:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "libarm.so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    :try_start_1
    new-array v1, v14, [B

    .line 145
    .local v1, "buf":[B
    const/4 v12, 0x0

    .line 147
    .local v12, "read":I
    :goto_0
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->StopDownload:Z

    if-eqz v14, :cond_4

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->StopDownload:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_7

    .line 177
    if-eqz v7, :cond_2

    .line 178
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :cond_2
    if-eqz v9, :cond_3

    .line 180
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_3
    invoke-direct/range {p0 .. p0}, Lhdp/widget/VitamioSoDownloadDialog;->deleteBaiduSo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v6, v7

    .line 189
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "length":I
    .end local v12    # "read":I
    .end local v13    # "url":Ljava/net/URL;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 148
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "length":I
    .restart local v12    # "read":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_4
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v7, v1, v14, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 149
    add-int/2addr v3, v12

    .line 150
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 151
    .local v11, "message":Landroid/os/Message;
    const/4 v14, 0x0

    iput v14, v11, Landroid/os/Message;->what:I

    .line 152
    iput v3, v11, Landroid/os/Message;->arg1:I

    .line 153
    iput v10, v11, Landroid/os/Message;->arg2:I

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 171
    .end local v1    # "buf":[B
    .end local v11    # "message":Landroid/os/Message;
    .end local v12    # "read":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .line 172
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "length":I
    .end local v13    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    sget-object v14, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->progess:I

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->handler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    if-eqz v6, :cond_5

    .line 178
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :cond_5
    if-eqz v9, :cond_6

    .line 180
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_6
    invoke-direct/range {p0 .. p0}, Lhdp/widget/VitamioSoDownloadDialog;->deleteBaiduSo()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 184
    :catch_1
    move-exception v5

    .line 185
    sget-object v14, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "length":I
    .restart local v12    # "read":I
    .restart local v13    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 185
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v14, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_6
    sget-object v14, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "vitamio so download finish."

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->local_path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 162
    const-string v16, "libarm.so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 161
    invoke-static {v14, v15}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lhdp/http/MyApp;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lio/vov/vitamio/Vitamio;->initialize(Landroid/content/Context;)Z

    move-result v8

    .line 167
    .local v8, "inited":Z
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 168
    .restart local v11    # "message":Landroid/os/Message;
    const/4 v14, 0x2

    iput v14, v11, Landroid/os/Message;->what:I

    .line 169
    const/16 v14, 0x3e8

    iput v14, v11, Landroid/os/Message;->arg1:I

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/widget/VitamioSoDownloadDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 177
    if-eqz v7, :cond_8

    .line 178
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :cond_8
    if-eqz v9, :cond_9

    .line 180
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_9
    invoke-direct/range {p0 .. p0}, Lhdp/widget/VitamioSoDownloadDialog;->deleteBaiduSo()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 175
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v8    # "inited":Z
    .end local v10    # "length":I
    .end local v11    # "message":Landroid/os/Message;
    .end local v12    # "read":I
    .end local v13    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v14

    .line 177
    :goto_4
    if-eqz v6, :cond_a

    .line 178
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :cond_a
    if-eqz v9, :cond_b

    .line 180
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_b
    invoke-direct/range {p0 .. p0}, Lhdp/widget/VitamioSoDownloadDialog;->deleteBaiduSo()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 188
    :goto_5
    throw v14

    .line 184
    :catch_3
    move-exception v5

    .line 185
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v15, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "inited":Z
    .restart local v10    # "length":I
    .restart local v11    # "message":Landroid/os/Message;
    .restart local v12    # "read":I
    .restart local v13    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    .line 185
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v14, Lhdp/widget/VitamioSoDownloadDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhdp/util/HdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 175
    .end local v1    # "buf":[B
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "inited":Z
    .end local v11    # "message":Landroid/os/Message;
    .end local v12    # "read":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 171
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v10    # "length":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_5
    move-exception v5

    goto/16 :goto_3
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    new-instance v0, Lhdp/widget/CustomDialogBuilder;

    invoke-direct {v0}, Lhdp/widget/CustomDialogBuilder;-><init>()V

    iput-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialogBuilder:Lhdp/widget/CustomDialogBuilder;

    .line 47
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialogBuilder:Lhdp/widget/CustomDialogBuilder;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lhdp/widget/CustomDialogBuilder;->setStyle(I)Lhdp/widget/CustomDialogBuilder;

    move-result-object v0

    .line 48
    const v1, 0x7f07000d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/widget/CustomDialogBuilder;->setTitle(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v0

    .line 49
    const v1, 0x7f070050

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/widget/CustomDialogBuilder;->setTextBtn1(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhdp/widget/CustomDialogBuilder;->create(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialog:Landroid/app/Dialog;

    .line 50
    return-void
.end method

.method private setProgress(II)V
    .locals 4
    .param p1, "curr"    # I
    .param p2, "total"    # I

    .prologue
    .line 84
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 85
    .local v0, "progress":I
    iget v1, p0, Lhdp/widget/VitamioSoDownloadDialog;->progess:I

    if-ne v0, v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialogBuilder:Lhdp/widget/CustomDialogBuilder;

    invoke-virtual {v1, v0}, Lhdp/widget/CustomDialogBuilder;->setProgress(I)Lhdp/widget/CustomDialogBuilder;

    .line 88
    iget-object v1, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialogBuilder:Lhdp/widget/CustomDialogBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u8f6f\u89e3\u5305\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    const-string v3, "kb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p2, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Lhdp/widget/CustomDialogBuilder;->setContent(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    .line 90
    iput v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->progess:I

    goto :goto_0
.end method


# virtual methods
.method public StopDownload()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->StopDownload:Z

    .line 209
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lhdp/widget/VitamioSoDownloadDialog;->StopDownload()V

    .line 81
    return-void
.end method

.method public hideButton()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialogBuilder:Lhdp/widget/CustomDialogBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhdp/widget/CustomDialogBuilder;->setTextBtn1(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    .line 64
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnDialogListener(Lhdp/widget/OnDialogListener;)V
    .locals 1
    .param p1, "onDialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    .line 53
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialogBuilder:Lhdp/widget/CustomDialogBuilder;

    invoke-virtual {v0, p1}, Lhdp/widget/CustomDialogBuilder;->setDialogListener(Lhdp/widget/OnDialogListener;)Lhdp/widget/CustomDialogBuilder;

    .line 54
    return-void
.end method

.method public setOnProgressListener(Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;)V
    .locals 0
    .param p1, "onProgressListener"    # Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    .prologue
    .line 218
    iput-object p1, p0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    .line 219
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 71
    iput-boolean v1, p0, Lhdp/widget/VitamioSoDownloadDialog;->StopDownload:Z

    .line 72
    iput-boolean v1, p0, Lhdp/widget/VitamioSoDownloadDialog;->Isok:Z

    .line 73
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/widget/VitamioSoDownloadDialog;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method
