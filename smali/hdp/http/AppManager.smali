.class public Lhdp/http/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lhdp/http/AppManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppManager()Lhdp/http/AppManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lhdp/http/AppManager;->instance:Lhdp/http/AppManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lhdp/http/AppManager;

    invoke-direct {v0}, Lhdp/http/AppManager;-><init>()V

    sput-object v0, Lhdp/http/AppManager;->instance:Lhdp/http/AppManager;

    .line 29
    :cond_0
    sget-object v0, Lhdp/http/AppManager;->instance:Lhdp/http/AppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lhdp/http/AppManager;->finishAllActivity()V

    .line 92
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 93
    .local v0, "activityMgr":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "activityMgr":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    sget-object v0, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    .line 38
    :cond_0
    sget-object v0, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 44
    sget-object v1, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 45
    .local v0, "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public finishActivity()V
    .locals 2

    .prologue
    .line 51
    sget-object v1, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lhdp/http/AppManager;->finishActivity(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    sget-object v0, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 61
    const/4 p1, 0x0

    .line 63
    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    return-void

    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 69
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lhdp/http/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public finishAllActivity()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 83
    sget-object v2, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 84
    return-void

    .line 79
    :cond_0
    sget-object v2, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    sget-object v2, Lhdp/http/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
