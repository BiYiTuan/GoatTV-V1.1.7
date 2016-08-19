.class public Lhdp/http/NetWorkHelper;
.super Ljava/lang/Object;
.source "NetWorkHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 47
    .local v1, "result":Lhdp/http/HttpResult;
    if-nez p2, :cond_1

    .line 48
    invoke-static {p0, p1, p2}, Lhdp/http/HttpClientHelper;->get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Lhdp/http/HttpResult;

    move-result-object v1

    .line 52
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lhdp/http/HttpResult;->getStatuCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 53
    invoke-virtual {v1}, Lhdp/http/HttpResult;->getHtml()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0

    .line 50
    :cond_1
    invoke-static {p0, p1, p2}, Lhdp/http/HttpClientHelper;->post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Lhdp/http/HttpResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static isEthernetDataEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .line 25
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 29
    .local v1, "isEthernetDataEnable":Z
    const/16 v2, 0x9

    .line 28
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 31
    return v1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    .line 17
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 19
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiDataEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .line 36
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 39
    .local v1, "isWifiDataEnable":Z
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 40
    return v1
.end method
