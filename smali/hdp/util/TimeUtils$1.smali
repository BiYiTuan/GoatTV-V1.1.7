.class Lhdp/util/TimeUtils$1;
.super Ljava/lang/Object;
.source "TimeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/util/TimeUtils;->getTimeStamp()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const-string v3, "http://api.letv.com/time"

    invoke-static {v3}, Lhdp/http/HttpClientHelper;->sendGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "stime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lhdp/util/TimeUtils;->time:J

    .line 76
    sget-wide v3, Lhdp/util/TimeUtils;->time:J

    sput-wide v3, Lhdp/util/TimeUtils;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sput-boolean v5, Lhdp/util/TimeUtils;->isRunGet:Z

    .line 81
    sput v6, Lhdp/util/TimeUtils;->timeRecord:I

    .line 84
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    sput-boolean v5, Lhdp/util/TimeUtils;->isRunGet:Z

    .line 81
    sput v6, Lhdp/util/TimeUtils;->timeRecord:I

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 80
    sput-boolean v5, Lhdp/util/TimeUtils;->isRunGet:Z

    .line 81
    sput v6, Lhdp/util/TimeUtils;->timeRecord:I

    .line 82
    throw v3
.end method
