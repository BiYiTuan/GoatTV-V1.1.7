.class Lhdp/player/PlayerMenuContrl$7;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/PlayerMenuContrl;->Clear_app()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/PlayerMenuContrl;


# direct methods
.method constructor <init>(Lhdp/player/PlayerMenuContrl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$7;->this$0:Lhdp/player/PlayerMenuContrl;

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1001
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0}, Lhdp/util/LiveDataHelper;->DropDB()V

    .line 1003
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$7;->this$0:Lhdp/player/PlayerMenuContrl;

    invoke-static {v0}, Lhdp/player/PlayerMenuContrl;->access$1(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1003
    invoke-static {v0, v1}, Lhdp/util/FileUtils;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 1005
    invoke-static {}, Lhdp/http/MyApp;->ClearPre()V

    .line 1006
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$7;->this$0:Lhdp/player/PlayerMenuContrl;

    invoke-static {v0}, Lhdp/player/PlayerMenuContrl;->access$1(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$7;->this$0:Lhdp/player/PlayerMenuContrl;

    invoke-static {v2}, Lhdp/player/PlayerMenuContrl;->access$1(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v2

    .line 1007
    const-class v3, Lhdp/player/StartActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1006
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1010
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$7;->this$0:Lhdp/player/PlayerMenuContrl;

    invoke-static {v0}, Lhdp/player/PlayerMenuContrl;->access$1(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1011
    return-void
.end method
