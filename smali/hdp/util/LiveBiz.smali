.class public Lhdp/util/LiveBiz;
.super Ljava/lang/Object;
.source "LiveBiz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static SetEPGDataFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "Xml"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 387
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    .line 403
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 390
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 395
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 399
    :catch_2
    move-exception v0

    .line 400
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 398
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 402
    :goto_4
    throw v3

    .line 399
    :catch_3
    move-exception v0

    .line 400
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 400
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 394
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method static getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "PT"    # Ljava/lang/String;
    .param p1, "PN"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, ""

    .line 197
    .local v0, "epgName":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v1, " "

    invoke-static {p0, v1}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, ":"

    invoke-static {p0, v1}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    return-object v0
.end method

.method public static getHdpEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "epgID"    # Ljava/lang/String;

    .prologue
    .line 212
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    const-string v10, "-"

    invoke-static {p1, v10}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 213
    const-string v10, "-"

    const/4 v11, 0x2

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "ID":[Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 215
    .local v4, "date":Ljava/util/Date;
    invoke-static {v4}, Lhdp/util/LiveBiz;->getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "Dt":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "tDate":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/TVMAO_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 219
    invoke-static {p1}, Lhdp/http/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 218
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 223
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "fDate":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 226
    invoke-static {v7}, Lhdp/util/LiveBiz;->readFileByLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v3    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v6    # "fDate":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "tDate":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 228
    .restart local v0    # "Dt":Ljava/lang/String;
    .restart local v3    # "ID":[Ljava/lang/String;
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v6    # "fDate":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v9    # "tDate":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 231
    .end local v6    # "fDate":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://wap.tvmao.com/program.jsp?c="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 231
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "EpgURL":Ljava/lang/String;
    invoke-static {v1}, Lhdp/http/MyApp;->curl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "Html":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v10, "<div class=\"c\">"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 237
    const-string v10, "\u5468\u65e5"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 238
    const-string v10, "<div class=\"c\">"

    .line 239
    const-string v11, "<script"

    .line 238
    invoke-static {v2, v10, v11}, Lhdp/http/MyApp;->vst_jq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 239
    const-string v11, "\u5468\u65e5"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "epglist":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v7, v2}, Lhdp/util/LiveBiz;->SetEPGDataFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v1    # "EpgURL":Ljava/lang/String;
    .end local v2    # "Html":Ljava/lang/String;
    .end local v3    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "epglist":[Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "tDate":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLeTvEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "epgID"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    const-string v10, "-"

    invoke-static {p1, v10}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 257
    const-string v10, "-"

    const/4 v11, 0x2

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "ID":[Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 261
    .local v4, "date":Ljava/util/Date;
    invoke-static {v4}, Lhdp/util/LiveBiz;->getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "Dt":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "tDate":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/letv-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 266
    invoke-static {p1}, Lhdp/http/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 265
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 272
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "fDate":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 277
    invoke-static {v7}, Lhdp/util/LiveBiz;->readFileByLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v3    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v6    # "fDate":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "tDate":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 280
    .restart local v0    # "Dt":Ljava/lang/String;
    .restart local v3    # "ID":[Ljava/lang/String;
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v6    # "fDate":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v9    # "tDate":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 283
    .end local v6    # "fDate":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://st.live.letv.com/live/playlist/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 283
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "EpgURL":Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v1, v10}, Lhdp/http/MyApp;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "Html":Ljava/lang/String;
    invoke-static {v7, v2}, Lhdp/util/LiveBiz;->SetEPGDataFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    .end local v2    # "Html":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 292
    .local v5, "e":Ljava/io/IOException;
    const-string v10, "error"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v1    # "EpgURL":Ljava/lang/String;
    .end local v3    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "tDate":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLiveEPG(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "EpgID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v25, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    const-string v26, "-"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_0

    sget-object v25, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    const-string v26, "-"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 34
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v6, "data":Landroid/os/Bundle;
    const-string v25, "progress"

    .line 36
    sget-object v26, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    sget-object v27, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lhdp/util/LiveBiz;->getLiveProgress(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 35
    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v25, "dqjm"

    sget-object v26, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v25, "xgjm"

    sget-object v26, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v6    # "data":Landroid/os/Bundle;
    :goto_0
    return-object v6

    .line 42
    :cond_0
    invoke-static/range {p0 .. p0}, Lhdp/http/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 43
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "not net"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 46
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 49
    :cond_3
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 50
    .restart local v6    # "data":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 51
    .local v8, "dqjm_Name":Ljava/lang/String;
    const/16 v23, 0x0

    .line 52
    .local v23, "xgjm_Name":Ljava/lang/String;
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v21

    .line 53
    .local v21, "system_date":Ljava/lang/String;
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    const-string v25, "letv-"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 55
    const/16 v25, 0x4

    invoke-static/range {v25 .. v25}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v22

    .line 57
    .local v22, "system_riqi":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lhdp/util/LiveBiz;->getLeTvEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "html":Ljava/lang/String;
    const-string v25, "\\{\"id\":\""

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, "epglist":[Ljava/lang/String;
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v14, v0, :cond_9

    .line 173
    .end local v11    # "epglist":[Ljava/lang/String;
    .end local v13    # "html":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v22    # "system_riqi":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 174
    :cond_5
    new-instance v25, Ljava/lang/StringBuilder;

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \u8282\u76ee\u4ee5\u5b9e\u65f6\u64ad\u51fa\u4e3a\u51c6"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 176
    :cond_6
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 177
    :cond_7
    new-instance v25, Ljava/lang/StringBuilder;

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \u8282\u76ee\u4ee5\u5b9e\u65f6\u64ad\u51fa\u4e3a\u51c6"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 179
    :cond_8
    const-string v25, "progress"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lhdp/util/LiveBiz;->getLiveProgress(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v25, "dqjm"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v25, "xgjm"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 183
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v8    # "dqjm_Name":Ljava/lang/String;
    .end local v21    # "system_date":Ljava/lang/String;
    .end local v23    # "xgjm_Name":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 184
    .local v9, "e":Ljava/lang/Exception;
    const-string v25, "error"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 63
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "data":Landroid/os/Bundle;
    .restart local v8    # "dqjm_Name":Ljava/lang/String;
    .restart local v11    # "epglist":[Ljava/lang/String;
    .restart local v13    # "html":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v21    # "system_date":Ljava/lang/String;
    .restart local v22    # "system_riqi":Ljava/lang/String;
    .restart local v23    # "xgjm_Name":Ljava/lang/String;
    :cond_9
    :try_start_1
    aget-object v25, v11, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "firtree":Ljava/lang/String;
    const-string v25, "\",\""

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 68
    .local v20, "sectree":[Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v25, v20, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\":\""

    const/16 v27, 0x2

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    .line 69
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "playtime":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "PT":Ljava/lang/String;
    const/16 v25, 0x4

    aget-object v25, v20, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\":\""

    const/16 v27, 0x2

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "PN":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v25

    invoke-static/range {v21 .. v21}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-lez v25, :cond_a

    .line 76
    invoke-static {v5, v4}, Lhdp/util/LiveBiz;->getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 77
    goto/16 :goto_2

    .line 80
    :cond_a
    invoke-static {v5, v4}, Lhdp/util/LiveBiz;->getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 83
    .end local v4    # "PN":Ljava/lang/String;
    .end local v5    # "PT":Ljava/lang/String;
    .end local v11    # "epglist":[Ljava/lang/String;
    .end local v12    # "firtree":Ljava/lang/String;
    .end local v13    # "html":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "playtime":Ljava/lang/String;
    .end local v20    # "sectree":[Ljava/lang/String;
    .end local v22    # "system_riqi":Ljava/lang/String;
    :cond_b
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    .line 84
    const-string v25, "mgtv-"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 86
    const/16 v25, 0x4

    invoke-static/range {v25 .. v25}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v22

    .line 88
    .restart local v22    # "system_riqi":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lhdp/util/LiveBiz;->getMgTvEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 90
    .restart local v13    # "html":Ljava/lang/String;
    const-string v25, "<item"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 92
    .restart local v11    # "epglist":[Ljava/lang/String;
    const/4 v14, 0x1

    .restart local v14    # "i":I
    :goto_3
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_4

    .line 94
    aget-object v25, v11, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 96
    .restart local v12    # "firtree":Ljava/lang/String;
    const-string v25, "\""

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 99
    .restart local v20    # "sectree":[Ljava/lang/String;
    const/16 v25, 0x3

    aget-object v25, v20, v25

    const/16 v26, 0x0

    const/16 v27, 0x2

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 100
    .local v16, "playtime_h":Ljava/lang/String;
    const/16 v25, 0x3

    aget-object v25, v20, v25

    const/16 v26, 0x2

    const/16 v27, 0x4

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 101
    .local v17, "playtime_m":Ljava/lang/String;
    const/16 v25, 0x3

    aget-object v25, v20, v25

    const/16 v26, 0x4

    const/16 v27, 0x6

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 102
    .local v18, "playtime_s":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 103
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 102
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 104
    .restart local v15    # "playtime":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5    # "PT":Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v25, v20, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 108
    .restart local v4    # "PN":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v25

    invoke-static/range {v21 .. v21}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v27

    const-wide/16 v29, 0x168

    sub-long v27, v27, v29

    cmp-long v25, v25, v27

    if-lez v25, :cond_c

    .line 110
    move-object/from16 v23, v4

    .line 111
    goto/16 :goto_2

    .line 114
    :cond_c
    move-object v8, v4

    .line 92
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 117
    .end local v4    # "PN":Ljava/lang/String;
    .end local v5    # "PT":Ljava/lang/String;
    .end local v11    # "epglist":[Ljava/lang/String;
    .end local v12    # "firtree":Ljava/lang/String;
    .end local v13    # "html":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "playtime":Ljava/lang/String;
    .end local v16    # "playtime_h":Ljava/lang/String;
    .end local v17    # "playtime_m":Ljava/lang/String;
    .end local v18    # "playtime_s":Ljava/lang/String;
    .end local v20    # "sectree":[Ljava/lang/String;
    .end local v22    # "system_riqi":Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 118
    const-string v25, "-"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_10

    const-string v25, "letv-"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 119
    const-string v25, "mgtv-"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 121
    const/16 v25, 0x4

    invoke-static/range {v25 .. v25}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v22

    .line 123
    .restart local v22    # "system_riqi":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lhdp/util/LiveBiz;->getHdpEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 125
    .restart local v13    # "html":Ljava/lang/String;
    const-string v25, "<br/>"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 127
    .restart local v11    # "epglist":[Ljava/lang/String;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_4

    .line 129
    aget-object v25, v11, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, "eid":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_f

    const-string v25, ":"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 132
    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 134
    const-string v25, " "

    const/16 v26, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "EPGS":[Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v2, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .restart local v5    # "PT":Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v25, v2, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 140
    .restart local v4    # "PN":Ljava/lang/String;
    const-string v25, ":"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 142
    invoke-static {v5}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v25

    invoke-static/range {v21 .. v21}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-lez v25, :cond_e

    .line 144
    invoke-static {v5, v4}, Lhdp/util/LiveBiz;->getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 145
    goto/16 :goto_2

    .line 148
    :cond_e
    invoke-static {v5, v4}, Lhdp/util/LiveBiz;->getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .end local v2    # "EPGS":[Ljava/lang/String;
    .end local v4    # "PN":Ljava/lang/String;
    .end local v5    # "PT":Ljava/lang/String;
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 153
    .end local v10    # "eid":Ljava/lang/String;
    .end local v11    # "epglist":[Ljava/lang/String;
    .end local v13    # "html":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v22    # "system_riqi":Ljava/lang/String;
    :cond_10
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 154
    const-string v25, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 155
    invoke-static/range {p0 .. p1}, Lhdp/util/LiveBiz;->getTvSouEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 156
    .local v24, "xml":Ljava/lang/String;
    new-instance v19, Lorg/dom4j/io/SAXReader;

    invoke-direct/range {v19 .. v19}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 157
    .local v19, "reader":Lorg/dom4j/io/SAXReader;
    new-instance v25, Ljava/io/ByteArrayInputStream;

    .line 158
    const-string v26, "utf-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 157
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v7

    .line 159
    .local v7, "document":Lorg/dom4j/Document;
    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v25

    const-string v26, "P"

    invoke-interface/range {v25 .. v26}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 160
    .local v3, "P":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/dom4j/Element;

    .line 162
    .local v9, "e":Lorg/dom4j/Element;
    const-string v25, "PN"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Lorg/dom4j/Element;->elementTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .restart local v4    # "PN":Ljava/lang/String;
    const-string v25, "PT"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Lorg/dom4j/Element;->elementTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "-"

    const-string v27, "/"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5    # "PT":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v25

    invoke-static/range {v21 .. v21}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-lez v25, :cond_11

    .line 165
    invoke-static {v5, v4}, Lhdp/util/LiveBiz;->getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 166
    goto/16 :goto_2

    .line 168
    :cond_11
    invoke-static {v5, v4}, Lhdp/util/LiveBiz;->getEPGName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_5
.end method

.method public static getLiveProgress(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "startEpg"    # Ljava/lang/String;
    .param p1, "endEpg"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x5

    .line 457
    const-wide/16 v0, 0x2d

    .line 458
    .local v0, "BF_Time":J
    const-string v8, "-"

    if-eq p0, v8, :cond_0

    const-string v8, "-"

    if-eq p1, v8, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_0

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_0

    const-string v8, "\u5b9e\u65f6\u64ad\u51fa\u4e3a\u51c6"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 460
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "End_Time":Ljava/lang/String;
    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "Start_Time":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 463
    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 464
    invoke-static {v3, v2}, Lhdp/util/LiveBiz;->minDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 465
    .local v6, "Z_Time":J
    const/4 v8, 0x1

    invoke-static {v8}, Lhdp/util/TimeUtils;->getDate(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lhdp/util/LiveBiz;->minDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 466
    .local v4, "X_Time":J
    cmp-long v8, v4, v4

    if-gez v8, :cond_1

    .line 467
    const-wide/16 v0, 0x64

    .line 473
    .end local v2    # "End_Time":Ljava/lang/String;
    .end local v3    # "Start_Time":Ljava/lang/String;
    .end local v4    # "X_Time":J
    .end local v6    # "Z_Time":J
    :cond_0
    :goto_0
    long-to-int v8, v0

    return v8

    .line 469
    .restart local v2    # "End_Time":Ljava/lang/String;
    .restart local v3    # "Start_Time":Ljava/lang/String;
    .restart local v4    # "X_Time":J
    .restart local v6    # "Z_Time":J
    :cond_1
    sub-long v8, v6, v4

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v0, v8, v6

    goto :goto_0
.end method

.method public static getMgTvEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "epgID"    # Ljava/lang/String;

    .prologue
    .line 299
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    const-string v10, "-"

    invoke-static {p1, v10}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 301
    const-string v10, "-"

    const/4 v11, 0x2

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "ID":[Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 305
    .local v4, "date":Ljava/util/Date;
    invoke-static {v4}, Lhdp/util/LiveBiz;->getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "Dt":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "tDate":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/mgtv-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 310
    invoke-static {p1}, Lhdp/http/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 309
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 316
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "fDate":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 321
    invoke-static {v7}, Lhdp/util/LiveBiz;->readFileByLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v3    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v6    # "fDate":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "tDate":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 324
    .restart local v0    # "Dt":Ljava/lang/String;
    .restart local v3    # "ID":[Ljava/lang/String;
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v6    # "fDate":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v9    # "tDate":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 327
    .end local v6    # "fDate":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://interface.hifuntv.com/mgtv/BasicIndex/GetPlaybill?Tag=26&BussId=1000000&VideoId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 329
    const-string v11, "&VideoType=1&TimeZone=8&Mode=relative&BeforeDay=0&AfterDay=1&MediaAssetsId=channel&CategoryId=1000&VideoIndex=0&Version=3.0.11.1.2.MG00_Release"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 327
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "EpgURL":Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v1, v10}, Lhdp/http/MyApp;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "Html":Ljava/lang/String;
    invoke-static {v7, v2}, Lhdp/util/LiveBiz;->SetEPGDataFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v2    # "Html":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 337
    .local v5, "e":Ljava/io/IOException;
    const-string v10, "error"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v1    # "EpgURL":Ljava/lang/String;
    .end local v3    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "tDate":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTvSouEPG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "epgID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    .line 350
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_2

    const-string v9, "@"

    invoke-static {p1, v9}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 351
    const-string v9, "@"

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "ID":[Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 353
    .local v4, "date":Ljava/util/Date;
    invoke-static {v4}, Lhdp/util/LiveBiz;->getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "Dt":Ljava/lang/String;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, "tDate":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 356
    invoke-static {p1}, Lhdp/http/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 355
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 359
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "fDate":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 362
    invoke-static {v6}, Lhdp/util/LiveBiz;->readFileByLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v2    # "ID":[Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "fDate":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "tDate":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 364
    .restart local v0    # "Dt":Ljava/lang/String;
    .restart local v2    # "ID":[Ljava/lang/String;
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v5    # "fDate":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v8    # "tDate":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 366
    .end local v5    # "fDate":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://hunantv.tvsou.com/pst/tv_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 367
    const-string v10, "/ch_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/W"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 366
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "EpgURL":Ljava/lang/String;
    invoke-static {v1}, Lhdp/http/MyApp;->curl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "Xml":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v9, "<PN>"

    invoke-static {v3, v9}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 370
    const-string v9, "</PN>"

    invoke-static {v3, v9}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 371
    invoke-static {v6, v3}, Lhdp/util/LiveBiz;->SetEPGDataFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v0    # "Dt":Ljava/lang/String;
    .end local v1    # "EpgURL":Ljava/lang/String;
    .end local v2    # "ID":[Ljava/lang/String;
    .end local v3    # "Xml":Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "tDate":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "dt"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x7

    .line 445
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "7"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "4"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    .line 446
    .local v2, "weekDays":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 447
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 448
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 449
    .local v1, "w":I
    if-gez v1, :cond_0

    .line 450
    const/4 v1, 0x0

    .line 452
    :cond_0
    aget-object v3, v2, v1

    return-object v3
.end method

.method public static minDiff(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "startTime"    # Ljava/lang/String;
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-static {p1}, Lhdp/util/LiveBiz;->strtotime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, Lhdp/util/LiveBiz;->strtotime(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static readFileByLines(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 412
    const-string v0, ""

    .line 413
    .local v0, "RetnString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 416
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 419
    .local v5, "tempString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 423
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 427
    if-eqz v4, :cond_3

    .line 429
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 435
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempString":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v0

    .line 421
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 424
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempString":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v6, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 427
    if-eqz v3, :cond_0

    .line 429
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 430
    :catch_1
    move-exception v2

    .line 431
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 427
    :goto_3
    if-eqz v3, :cond_2

    .line 429
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 434
    :cond_2
    :goto_4
    throw v6

    .line 430
    :catch_2
    move-exception v2

    .line 431
    .restart local v2    # "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 430
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 431
    .restart local v2    # "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e1":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 426
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempString":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 424
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static strtotime(Ljava/lang/String;)J
    .locals 8
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 481
    const-wide/16 v2, 0x0

    .line 483
    .local v2, "unixTimestamp":J
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 484
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-wide v2

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/text/ParseException;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
