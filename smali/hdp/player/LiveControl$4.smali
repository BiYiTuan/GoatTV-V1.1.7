.class Lhdp/player/LiveControl$4;
.super Ljava/lang/Object;
.source "LiveControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LiveControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveControl;


# direct methods
.method constructor <init>(Lhdp/player/LiveControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveControl$4;->this$0:Lhdp/player/LiveControl;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lhdp/player/LiveControl$4;->this$0:Lhdp/player/LiveControl;

    # invokes: Lhdp/player/LiveControl;->getEpg()V
    invoke-static {v0}, Lhdp/player/LiveControl;->access$5(Lhdp/player/LiveControl;)V

    .line 216
    return-void
.end method
