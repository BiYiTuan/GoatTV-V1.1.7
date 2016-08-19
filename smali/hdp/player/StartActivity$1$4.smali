.class Lhdp/player/StartActivity$1$4;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/StartActivity$1;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$1$4;->this$1:Lhdp/player/StartActivity$1;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lhdp/player/StartActivity$1$4;->this$1:Lhdp/player/StartActivity$1;

    invoke-static {v0}, Lhdp/player/StartActivity$1;->access$0(Lhdp/player/StartActivity$1;)Lhdp/player/StartActivity;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/player/StartActivity;->finish()V

    .line 395
    return-void
.end method
