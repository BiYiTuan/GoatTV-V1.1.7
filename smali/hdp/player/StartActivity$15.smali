.class Lhdp/player/StartActivity$15;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->NetDiaShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$15;->this$0:Lhdp/player/StartActivity;

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lhdp/player/StartActivity$15;->this$0:Lhdp/player/StartActivity;

    new-instance v1, Landroid/content/Intent;

    .line 1136
    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0, v1}, Lhdp/player/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 1137
    iget-object v0, p0, Lhdp/player/StartActivity$15;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v0}, Lhdp/player/StartActivity;->finish()V

    .line 1138
    return-void
.end method
