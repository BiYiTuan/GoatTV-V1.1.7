.class Lhdp/player/LivePlayerS$5;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayerS;->createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayerS;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$5;->this$0:Lhdp/player/LivePlayerS;

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1077
    iget-object v0, p0, Lhdp/player/LivePlayerS$5;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v0}, Lhdp/player/LivePlayerS;->exitImgLink()V

    .line 1078
    return-void
.end method
