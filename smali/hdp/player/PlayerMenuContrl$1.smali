.class Lhdp/player/PlayerMenuContrl$1;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/PlayerMenuContrl;
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
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$1;->this$0:Lhdp/player/PlayerMenuContrl;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$1;->this$0:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 87
    return-void
.end method
