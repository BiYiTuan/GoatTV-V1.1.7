.class Lhdp/player/Bangding$8;
.super Ljava/lang/Object;
.source "Bangding.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/Bangding;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/Bangding;


# direct methods
.method constructor <init>(Lhdp/player/Bangding;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/Bangding$8;->this$0:Lhdp/player/Bangding;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Lhdp/player/Bangding$8;->this$0:Lhdp/player/Bangding;

    invoke-virtual {v0}, Lhdp/player/Bangding;->finish()V

    .line 98
    return-void
.end method
