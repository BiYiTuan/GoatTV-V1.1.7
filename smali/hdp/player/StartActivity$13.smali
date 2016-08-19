.class Lhdp/player/StartActivity$13;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->downloadCompleted(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$13;->this$0:Lhdp/player/StartActivity;

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1112
    iget-object v0, p0, Lhdp/player/StartActivity$13;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->downloadPackage()V
    invoke-static {v0}, Lhdp/player/StartActivity;->access$34(Lhdp/player/StartActivity;)V

    .line 1114
    return-void
.end method
