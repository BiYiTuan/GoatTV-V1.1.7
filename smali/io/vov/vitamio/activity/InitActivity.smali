.class public Lio/vov/vitamio/activity/InitActivity;
.super Landroid/app/Activity;
.source "InitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vov/vitamio/activity/InitActivity$UIHandler;
    }
.end annotation


# static fields
.field public static final FROM_ME:Ljava/lang/String; = "fromVitamioInitActivity"


# instance fields
.field private mPD:Landroid/app/ProgressDialog;

.field private uiHandler:Lio/vov/vitamio/activity/InitActivity$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lio/vov/vitamio/activity/InitActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity;->mPD:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lio/vov/vitamio/activity/InitActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lio/vov/vitamio/activity/InitActivity;->mPD:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lio/vov/vitamio/activity/InitActivity;)Lio/vov/vitamio/activity/InitActivity$UIHandler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity;->uiHandler:Lio/vov/vitamio/activity/InitActivity$UIHandler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lio/vov/vitamio/activity/InitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 42
    new-instance v0, Lio/vov/vitamio/activity/InitActivity$UIHandler;

    invoke-direct {v0, p0}, Lio/vov/vitamio/activity/InitActivity$UIHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/vov/vitamio/activity/InitActivity;->uiHandler:Lio/vov/vitamio/activity/InitActivity$UIHandler;

    .line 44
    new-instance v0, Lio/vov/vitamio/activity/InitActivity$1;

    invoke-direct {v0, p0}, Lio/vov/vitamio/activity/InitActivity$1;-><init>(Lio/vov/vitamio/activity/InitActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v0, v1}, Lio/vov/vitamio/activity/InitActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method
