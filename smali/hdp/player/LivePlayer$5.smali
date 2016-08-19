.class Lhdp/player/LivePlayer$5;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayer;->createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayer;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$5;->this$0:Lhdp/player/LivePlayer;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1083
    iget-object v0, p0, Lhdp/player/LivePlayer$5;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v0}, Lhdp/player/LivePlayer;->exitImgLink()V

    .line 1084
    return-void
.end method
