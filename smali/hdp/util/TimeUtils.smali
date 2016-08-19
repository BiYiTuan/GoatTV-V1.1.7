.class public Lhdp/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate(I)Ljava/lang/String;
    .locals 4
    .param p0, "sType"    # I

    .prologue
    .line 23
    const-string v0, "yyyy/MM/dd HH:mm:ss"

    .line 24
    .local v0, "Format":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 25
    const-string v0, "HH:mm"

    .line 33
    :cond_0
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "sDateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "Asia/Shanghai"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 35
    .local v2, "timeZoneChina":Ljava/util/TimeZone;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 36
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 26
    .end local v1    # "sDateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "timeZoneChina":Ljava/util/TimeZone;
    :cond_1
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    .line 27
    const-string v0, "yyyyMMdd"

    .line 28
    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne p0, v3, :cond_3

    .line 29
    const-string v0, "yyyy-MM-dd"

    .line 30
    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p0, v3, :cond_0

    .line 31
    const-string v0, "yyyy/MM/dd"

    goto :goto_0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 9

    .prologue
    .line 41
    const-wide/16 v4, 0x0

    .line 43
    .local v4, "time":J
    :try_start_0
    const-string v6, "http://api.letv.com/time"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "object":Lorg/json/JSONObject;
    const-string v6, "stime"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 51
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    const-wide/16 v6, 0x258

    add-long/2addr v4, v6

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 54
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    :cond_0
    return-object v3

    .line 46
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
