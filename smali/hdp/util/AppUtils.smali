.class public Lhdp/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field public static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsInstall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhdp/adapter/LocalAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    const-string v1, "null"

    :goto_0
    return-object v1

    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/adapter/LocalAppInfo;

    .line 44
    .local v0, "localAppInfo":Lhdp/adapter/LocalAppInfo;
    iget-object v2, v0, Lhdp/adapter/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v1, v0, Lhdp/adapter/LocalAppInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v4, 0x0

    .line 78
    .local v4, "value":Ljava/lang/Object;
    sget-object v1, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    .line 80
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 88
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 86
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 90
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 92
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 104
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    if-nez v4, :cond_1

    .line 106
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The name \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 108
    const-string v7, "\' is not defined in the manifest file\'s meta data."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v5, Ljava/lang/RuntimeException;

    .line 100
    const-string v6, "Could not read the name in the manifest file."

    .line 98
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 112
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "value":Ljava/lang/Object;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getMetaDataValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lhdp/util/AppUtils;->getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "def":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "def":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 55
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v2, 0x7f060062

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    .local v0, "time":J
    sget-wide v4, Lhdp/util/AppUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 27
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x5dc

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 29
    const/4 v4, 0x1

    .line 34
    :goto_0
    return v4

    .line 33
    :cond_0
    sput-wide v0, Lhdp/util/AppUtils;->lastClickTime:J

    .line 34
    const/4 v4, 0x0

    goto :goto_0
.end method
