.class Lhdp/adapter/ManListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/adapter/ManListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imghide:Landroid/widget/ImageView;

.field final synthetic this$0:Lhdp/adapter/ManListAdapter;

.field txtName:Landroid/widget/TextView;

.field txtNum:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lhdp/adapter/ManListAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lhdp/adapter/ManListAdapter$ViewHolder;->this$0:Lhdp/adapter/ManListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
