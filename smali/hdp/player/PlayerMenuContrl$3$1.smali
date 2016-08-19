.class Lhdp/player/PlayerMenuContrl$3$1;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/PlayerMenuContrl$3;->onProgressChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/PlayerMenuContrl$3;


# direct methods
.method constructor <init>(Lhdp/player/PlayerMenuContrl$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$3$1;->this$1:Lhdp/player/PlayerMenuContrl$3;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$3$1;->this$1:Lhdp/player/PlayerMenuContrl$3;

    invoke-static {v0}, Lhdp/player/PlayerMenuContrl$3;->access$0(Lhdp/player/PlayerMenuContrl$3;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/PlayerMenuContrl;->access$4(Lhdp/player/PlayerMenuContrl;)V

    .line 549
    return-void
.end method
