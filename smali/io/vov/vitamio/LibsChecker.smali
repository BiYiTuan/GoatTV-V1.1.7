.class public final Lio/vov/vitamio/LibsChecker;
.super Ljava/lang/Object;
.source "LibsChecker.java"


# static fields
.field public static final FROM_ME:Ljava/lang/String; = "fromVitamioInitActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkVitamioLibs(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-static {p0}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromVitamioInitActivity"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    sget-object v2, Lio/vov/vitamio/Vitamio;->LIBS_DIR:Ljava/lang/String;

    invoke-static {p0, v2}, Lio/vov/vitamio/Vitamio;->initialize(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0
.end method
