.class public Lhdp/http/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "CrashHandler"

.field private static instance:Lhdp/http/CrashHandler;


# instance fields
.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhdp/http/CrashHandler;->infos:Ljava/util/Map;

    .line 49
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lhdp/http/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 50
    return-void
.end method

.method private Clear_db(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0}, Lhdp/util/LiveDataHelper;->DropDB()V

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Lhdp/http/MyApp;->setIsfirst(Z)V

    .line 199
    invoke-static {}, Lhdp/http/AppManager;->getAppManager()Lhdp/http/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhdp/http/AppManager;->AppExit(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method static synthetic access$0(Lhdp/http/CrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lhdp/http/CrashHandler;->sendAppCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1(Lhdp/http/CrashHandler;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lhdp/http/CrashHandler;->saveCatchInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lhdp/http/CrashHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lhdp/http/CrashHandler;->Clear_db(Landroid/content/Context;)V

    return-void
.end method

.method public static getCrashHandler()Lhdp/http/CrashHandler;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lhdp/http/CrashHandler;

    invoke-direct {v0}, Lhdp/http/CrashHandler;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lhdp/http/CrashHandler;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lhdp/http/CrashHandler;->instance:Lhdp/http/CrashHandler;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lhdp/http/CrashHandler;

    invoke-direct {v0}, Lhdp/http/CrashHandler;-><init>()V

    sput-object v0, Lhdp/http/CrashHandler;->instance:Lhdp/http/CrashHandler;

    .line 56
    :cond_0
    sget-object v0, Lhdp/http/CrashHandler;->instance:Lhdp/http/CrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    invoke-static {}, Lhdp/http/AppManager;->getAppManager()Lhdp/http/AppManager;

    move-result-object v2

    invoke-virtual {v2}, Lhdp/http/AppManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lhdp/http/CrashHandler;->collectDeviceInfo(Landroid/content/Context;)V

    .line 103
    new-instance v1, Lhdp/http/CrashHandler$1;

    invoke-direct {v1, p0, v0, p1}, Lhdp/http/CrashHandler$1;-><init>(Lhdp/http/CrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {v1}, Lhdp/http/CrashHandler$1;->start()V

    .line 113
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveCatchInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhdp/http/CrashHandler;->infos:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 152
    .local v4, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 153
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 155
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 156
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method private sendAppCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cont"    # Landroid/content/Context;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06008b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 168
    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 169
    const v1, 0x7f06008d

    .line 170
    new-instance v2, Lhdp/http/CrashHandler$2;

    invoke-direct {v2, p0, p2}, Lhdp/http/CrashHandler$2;-><init>(Lhdp/http/CrashHandler;Ljava/lang/Throwable;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    const v1, 0x7f060054

    new-instance v2, Lhdp/http/CrashHandler$3;

    invoke-direct {v2, p0, p1}, Lhdp/http/CrashHandler$3;-><init>(Lhdp/http/CrashHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    new-instance v1, Lhdp/http/CrashHandler$4;

    invoke-direct {v1, p0, p1}, Lhdp/http/CrashHandler$4;-><init>(Lhdp/http/CrashHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 191
    return-void
.end method


# virtual methods
.method public collectDeviceInfo(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 124
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 125
    const/4 v6, 0x1

    .line 124
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 126
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 127
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v4, "null"

    .line 129
    .local v4, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "versionCode":Ljava/lang/String;
    iget-object v5, p0, Lhdp/http/CrashHandler;->infos:Ljava/util/Map;

    const-string v6, "versionName"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v5, p0, Lhdp/http/CrashHandler;->infos:Ljava/util/Map;

    const-string v6, "versionCode"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "versionCode":Ljava/lang/String;
    .end local v4    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, p0, Lhdp/http/CrashHandler;->infos:Ljava/util/Map;

    const-string v6, "Device"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v5, p0, Lhdp/http/CrashHandler;->infos:Ljava/util/Map;

    const-string v6, "Os"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void

    .line 128
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "CrashHandler"

    const-string v6, "an error occured when collect package info"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lhdp/http/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 70
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 71
    return-void
.end method

.method public restartApp(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "Crash"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v3, "iaarc.com.tv"

    const-string v4, "iaarc.com.tv.StartActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/4 v3, 0x0

    .line 217
    const/high16 v4, 0x10000000

    .line 216
    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 219
    .local v2, "restartIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    check-cast v1, Landroid/app/AlarmManager;

    .line 220
    .local v1, "mgr":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-virtual {v1, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 222
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-direct {p0, p2}, Lhdp/http/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhdp/http/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lhdp/http/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void
.end method
