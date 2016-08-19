.class Lcom/baidu/mobstat/b;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Android"

    sput-object v0, Lcom/baidu/mobstat/b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/b;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/b;->e:I

    iput-object v1, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/mobstat/b;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/b;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/b;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->getCIUD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/b;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->k:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/b;->h:I

    invoke-static {p1}, Lcom/baidu/mobstat/x;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/b;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "stat"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/baidu/mobstat/b;->h:I

    iget v1, p0, Lcom/baidu/mobstat/b;->i:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/b;->h:I

    iget v0, p0, Lcom/baidu/mobstat/b;->h:I

    iget v1, p0, Lcom/baidu/mobstat/b;->i:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/b;->i:I

    iget v0, p0, Lcom/baidu/mobstat/b;->h:I

    iget v1, p0, Lcom/baidu/mobstat/b;->i:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/b;->h:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_2
    :try_start_4
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/b;->e:I

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->checkCellLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/baidu/mobstat/x;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->m:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->checkGPSLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/baidu/mobstat/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    :try_start_8
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->checkWifiLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/baidu/mobstat/x;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    :try_start_9
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->p:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :cond_2
    :try_start_c
    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mobstat/b;->m:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    :cond_3
    :try_start_e
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    :catch_5
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    :cond_4
    :try_start_10
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    :catch_6
    move-exception v0

    :try_start_11
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "o"

    sget-object v0, Lcom/baidu/mobstat/b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "s"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "k"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "i"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "v"

    const-string v2, "3.4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "a"

    iget v2, p0, Lcom/baidu/mobstat/b;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "n"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "d"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "w"

    iget v2, p0, Lcom/baidu/mobstat/b;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "h"

    iget v2, p0, Lcom/baidu/mobstat/b;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "c"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "op"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->k:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_8
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "m"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->l:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cl"

    iget-object v2, p0, Lcom/baidu/mobstat/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gl"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_a
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "wl"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "l"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->p:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_c
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sq"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "stat"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "header ini error"

    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    sget-object v0, Lcom/baidu/mobstat/b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/b;->b:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/b;->d:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/b;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/b;->k:Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/b;->l:Ljava/lang/String;

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;

    goto :goto_b

    :cond_c
    iget-object v0, p0, Lcom/baidu/mobstat/b;->p:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c
.end method
