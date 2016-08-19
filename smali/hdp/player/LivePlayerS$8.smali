.class Lhdp/player/LivePlayerS$8;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayerS;->exitImgLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayerS;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1e

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1148
    :try_start_0
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    sget-object v17, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v11, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v17, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1150
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 1151
    .local v12, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1152
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 1153
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 1154
    .local v13, "is":Ljava/io/InputStream;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 1155
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 1156
    .local v3, "applength":J
    new-instance v2, Ljava/io/File;

    sget-object v17, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    .line 1157
    sget-object v18, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    .line 1156
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    .local v2, "ApkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1159
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1162
    :cond_0
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "chmod 777 "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1162
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1164
    .local v6, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 1165
    .local v16, "runtime":Ljava/lang/Runtime;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1169
    .end local v6    # "command":Ljava/lang/String;
    .end local v16    # "runtime":Ljava/lang/Runtime;
    :goto_0
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1171
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 1172
    .local v5, "buffer":[B
    const/4 v7, 0x0

    .line 1173
    .local v7, "count":I
    const/4 v8, 0x0

    .line 1174
    .local v8, "countnow":I
    :goto_1
    invoke-virtual {v13, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_2

    .line 1183
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1184
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1193
    .end local v2    # "ApkFile":Ljava/io/File;
    .end local v3    # "applength":J
    .end local v5    # "buffer":[B
    .end local v7    # "count":I
    .end local v8    # "countnow":I
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1194
    return-void

    .line 1166
    .restart local v2    # "ApkFile":Ljava/io/File;
    .restart local v3    # "applength":J
    .restart local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 1167
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1187
    .end local v2    # "ApkFile":Ljava/io/File;
    .end local v3    # "applength":J
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 1188
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x21

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1175
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "ApkFile":Ljava/io/File;
    .restart local v3    # "applength":J
    .restart local v5    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v8    # "countnow":I
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v13    # "is":Ljava/io/InputStream;
    :cond_2
    add-int/2addr v8, v7

    .line 1176
    int-to-float v0, v8

    move/from16 v17, v0

    long-to-float v0, v3

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1177
    .local v15, "progress":I
    :try_start_4
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 1178
    .local v14, "msg":Landroid/os/Message;
    iput v15, v14, Landroid/os/Message;->arg1:I

    .line 1179
    const/16 v17, 0x1f

    move/from16 v0, v17

    iput v0, v14, Landroid/os/Message;->what:I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/player/LivePlayerS$8;->this$0:Lhdp/player/LivePlayerS;

    move-object/from16 v17, v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1181
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v5, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method
