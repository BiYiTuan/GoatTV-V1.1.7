.class Lhdp/player/ManChannel$2;
.super Ljava/lang/Object;
.source "ManChannel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/ManChannel;->InitListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/ManChannel;


# direct methods
.method constructor <init>(Lhdp/player/ManChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/ManChannel$2;->this$0:Lhdp/player/ManChannel;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lhdp/player/ManChannel$2;->this$0:Lhdp/player/ManChannel;

    const/4 v1, -0x1

    # invokes: Lhdp/player/ManChannel;->LeftorRight(I)V
    invoke-static {v0, v1}, Lhdp/player/ManChannel;->access$2(Lhdp/player/ManChannel;I)V

    .line 155
    return-void
.end method
