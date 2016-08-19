.class Lhdp/player/StartActivity$11;
.super Ljava/lang/Thread;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->downloadPackage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    .line 964
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 968
    const/4 v12, 0x0

    .line 969
    .local v12, "url":Ljava/net/URL;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    sget-object v14, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 970
    .end local v12    # "url":Ljava/net/URL;
    .local v13, "url":Ljava/net/URL;
    :try_start_1
    const-string v14, "StartActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "update app download url: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 971
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 973
    .local v4, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 975
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0x194

    if-ne v14, v15, :cond_0

    .line 976
    const-string v14, "StartActivity"

    const-string v15, "No such package to download!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v14, "http://hdp.sfcdn.org/dpplay.apk"

    sput-object v14, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    .line 978
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1039
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 982
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 983
    .local v9, "length":I
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 985
    .local v8, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v15}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhdp/player/StartActivity;->access$35(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 987
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->savefolder:Ljava/lang/String;
    invoke-static {v14}, Lhdp/player/StartActivity;->access$36(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "update.apk"

    invoke-direct {v1, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .local v1, "ApkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 991
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 996
    :cond_1
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "chmod 777 "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 996
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 999
    .local v11, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v11, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1004
    .end local v3    # "command":Ljava/lang/String;
    .end local v11    # "runtime":Ljava/lang/Runtime;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1006
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1007
    .local v5, "count":I
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 1011
    .local v2, "buf":[B
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 1012
    .local v10, "numread":I
    add-int/2addr v5, v10

    .line 1013
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    int-to-float v15, v5

    int-to-float v0, v9

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-static {v14, v15}, Lhdp/player/StartActivity;->access$37(Lhdp/player/StartActivity;I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v15}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v15

    .line 1016
    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1015
    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1017
    if-gtz v10, :cond_2

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1024
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1025
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1027
    .end local v1    # "ApkFile":Ljava/io/File;
    .end local v2    # "buf":[B
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v10    # "numread":I
    :catch_0
    move-exception v6

    move-object v12, v13

    .line 1028
    .end local v13    # "url":Ljava/net/URL;
    .local v6, "e":Ljava/net/MalformedURLException;
    .restart local v12    # "url":Ljava/net/URL;
    :goto_3
    const-string v14, "error"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string v14, "StartActivity"

    const-string v15, "Throw MalformedURLException!!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v15}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v15

    .line 1031
    const/16 v16, 0x3

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 1030
    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1000
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v1    # "ApkFile":Ljava/io/File;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "length":I
    .restart local v13    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 1001
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string v14, "error"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1032
    .end local v1    # "ApkFile":Ljava/io/File;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":I
    :catch_2
    move-exception v6

    move-object v12, v13

    .line 1033
    .end local v13    # "url":Ljava/net/URL;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v12    # "url":Ljava/net/URL;
    :goto_4
    const-string v14, "error"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v14, "StartActivity"

    const-string v15, "Throw IOException!!!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lhdp/player/StartActivity$11;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v15}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v15

    .line 1036
    const/16 v16, 0x3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 1035
    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1022
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v1    # "ApkFile":Ljava/io/File;
    .restart local v2    # "buf":[B
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "length":I
    .restart local v10    # "numread":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_2
    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v7, v2, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 1032
    .end local v1    # "ApkFile":Ljava/io/File;
    .end local v2    # "buf":[B
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v10    # "numread":I
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 1027
    :catch_4
    move-exception v6

    goto :goto_3
.end method
