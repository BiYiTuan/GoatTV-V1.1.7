.class Lhdp/player/PlayerMenuContrl$2;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/PlayerMenuContrl;->Dialog_DownvitamioSo()V
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
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$2;->this$0:Lhdp/player/PlayerMenuContrl;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$2;->this$0:Lhdp/player/PlayerMenuContrl;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl$2;->this$0:Lhdp/player/PlayerMenuContrl;

    # getter for: Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;
    invoke-static {v1}, Lhdp/player/PlayerMenuContrl;->access$0(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$2;->this$0:Lhdp/player/PlayerMenuContrl;

    # getter for: Lhdp/player/PlayerMenuContrl;->sodownhdp:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/PlayerMenuContrl;->access$1(Lhdp/player/PlayerMenuContrl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lhdp/player/PlayerMenuContrl$2;->this$0:Lhdp/player/PlayerMenuContrl;

    # getter for: Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;
    invoke-static {v4}, Lhdp/player/PlayerMenuContrl;->access$0(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v4

    .line 501
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 503
    const-string v4, "libarm.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    # invokes: Lhdp/player/PlayerMenuContrl;->CreatDownDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lhdp/player/PlayerMenuContrl;->access$2(Lhdp/player/PlayerMenuContrl;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$2;->this$0:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 507
    return-void
.end method
