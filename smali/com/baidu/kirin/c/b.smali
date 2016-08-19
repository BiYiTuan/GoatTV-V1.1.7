.class public Lcom/baidu/kirin/c/b;
.super Lcom/baidu/kirin/c/a;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lorg/json/JSONObject;

.field private i:Lorg/json/JSONObject;

.field private j:Lorg/json/JSONObject;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/baidu/kirin/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/kirin/c/b;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    const/4 v2, 0x1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "appkey"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "channel"

    iget-object v5, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/kirin/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os_version"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "manufacturer"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "phone_type"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceid"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "imei"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "resolution"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "platform"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "is_mobile_device"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "modulename"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wifimac"

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "havegps"

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "os_sdk"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cuid"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Satic Data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "time"

    invoke-static {}, Lcom/baidu/kirin/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_name"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_code"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "network_type"

    invoke-static {p1}, Lcom/baidu/kirin/a/a;->l(Landroid/content/Context;)Lcom/baidu/kirin/objects/NetworkStatus;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "latlongitude"

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->checkGPSLocationSetting(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p1, v2}, Lcom/baidu/kirin/a/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dyna Data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kirin_static_data_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/kirin/c/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/kirin/c/b;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/kirin/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/kirin/c/b;->i:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->i:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const-string v1, "Static file is empty, need collect static data!"

    invoke-static {v1}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/baidu/kirin/c/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/kirin/c/b;->h:Lorg/json/JSONObject;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/baidu/kirin/c/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/kirin/c/b;->h:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/kirin/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/kirin/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/kirin/c/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/kirin/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/kirin/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected b()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/kirin/c/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/kirin/c/b;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/kirin/c/b;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/kirin/c/b;->j:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->h:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/baidu/kirin/d/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/kirin/c/b;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->j:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/baidu/kirin/d/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/kirin/c/b;->d:Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/baidu/kirin/c/b;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "send new static data!"

    invoke-static {v0}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->d:Lorg/json/JSONObject;

    const-string v1, "isUpdateClientData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void

    :cond_0
    const-string v0, "send cache static data!"

    invoke-static {v0}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->d:Lorg/json/JSONObject;

    const-string v1, "isUpdateClientData"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what\'s going on?? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInfoChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/kirin/c/b;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  dump static data after success!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/kirin/d/d;->a(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/kirin/c/b;->k:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/kirin/c/b;->h:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/baidu/kirin/d/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/kirin/c/b;->e:Lorg/json/JSONObject;

    const-string v1, "updateConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/kirin/b/a;->a(Landroid/content/Context;)Lcom/baidu/kirin/b/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/kirin/b/a;->a(ZLorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->e:Lorg/json/JSONObject;

    const-string v1, "logID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/kirin/b/a;->a(Landroid/content/Context;)Lcom/baidu/kirin/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/kirin/b/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Dump static file has exception!!"

    invoke-static {v1}, Lcom/baidu/kirin/d/d;->c(Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/kirin/b/a;->a(Landroid/content/Context;)Lcom/baidu/kirin/b/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/kirin/b/a;->a(ZLorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/kirin/b/a;->a(Landroid/content/Context;)Lcom/baidu/kirin/b/a;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/baidu/kirin/b/a;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected f()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/kirin/a/a;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/kirin/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/kirin/b/a;->a(Landroid/content/Context;)Lcom/baidu/kirin/b/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/kirin/b/a;->a(ZLorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
