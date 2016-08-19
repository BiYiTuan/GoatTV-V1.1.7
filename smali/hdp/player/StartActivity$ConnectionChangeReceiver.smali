.class Lhdp/player/StartActivity$ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method private constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lhdp/player/StartActivity$ConnectionChangeReceiver;->this$0:Lhdp/player/StartActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhdp/player/StartActivity;Lhdp/player/StartActivity$ConnectionChangeReceiver;)V
    .locals 0

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lhdp/player/StartActivity$ConnectionChangeReceiver;-><init>(Lhdp/player/StartActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1215
    iget-object v0, p0, Lhdp/player/StartActivity$ConnectionChangeReceiver;->this$0:Lhdp/player/StartActivity;

    invoke-static {v0}, Lhdp/http/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lhdp/player/StartActivity$ConnectionChangeReceiver;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->CheckUpdate()V
    invoke-static {v0}, Lhdp/player/StartActivity;->access$19(Lhdp/player/StartActivity;)V

    .line 1218
    :cond_0
    return-void
.end method
