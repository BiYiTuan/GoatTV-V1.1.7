.class Lhdp/player/PlayerMenuContrl$5;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/PlayerMenuContrl;->ChangeJiemaDialog()V
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
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$5;->this$0:Lhdp/player/PlayerMenuContrl;

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$5;->this$0:Lhdp/player/PlayerMenuContrl;

    const-string v1, "SOFT"

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel(Ljava/lang/String;)V

    .line 605
    return-void
.end method
