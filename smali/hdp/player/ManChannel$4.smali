.class Lhdp/player/ManChannel$4;
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
    iput-object p1, p0, Lhdp/player/ManChannel$4;->this$0:Lhdp/player/ManChannel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lhdp/player/ManChannel$4;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->channellist:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/ManChannel;->access$3(Lhdp/player/ManChannel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 169
    return-void
.end method
