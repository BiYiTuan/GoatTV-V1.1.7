.class public Lhdp/javabean/HuiboDataInfo;
.super Ljava/lang/Object;
.source "HuiboDataInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/javabean/HuiboDataInfo$Lable_id;
    }
.end annotation


# static fields
.field public static final creator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lhdp/javabean/HuiboDataInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/HuiboDataInfo$Lable_id;",
            ">;"
        }
    .end annotation
.end field

.field public preurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lhdp/javabean/HuiboDataInfo$1;

    invoke-direct {v0}, Lhdp/javabean/HuiboDataInfo$1;-><init>()V

    sput-object v0, Lhdp/javabean/HuiboDataInfo;->creator:Landroid/os/Parcelable$Creator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lhdp/javabean/HuiboDataInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lhdp/javabean/HuiboDataInfo;->preurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    return-void
.end method
