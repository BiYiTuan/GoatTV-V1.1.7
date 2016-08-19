.class public Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginInfo"
.end annotation


# instance fields
.field protected descriptor:Lorg/eclipse/jetty/webapp/Descriptor;

.field protected name:Ljava/lang/String;

.field protected origin:Lorg/eclipse/jetty/webapp/Origin;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->name:Ljava/lang/String;

    .line 86
    sget-object v0, Lorg/eclipse/jetty/webapp/Origin;->Annotation:Lorg/eclipse/jetty/webapp/Origin;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "d"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->name:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->descriptor:Lorg/eclipse/jetty/webapp/Descriptor;

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebFragment:Lorg/eclipse/jetty/webapp/Origin;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_1
    instance-of v0, p2, Lorg/eclipse/jetty/webapp/OverrideDescriptor;

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebOverride:Lorg/eclipse/jetty/webapp/Origin;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    goto :goto_0

    .line 77
    :cond_2
    instance-of v0, p2, Lorg/eclipse/jetty/webapp/DefaultsDescriptor;

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebDefaults:Lorg/eclipse/jetty/webapp/Origin;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    goto :goto_0

    .line 80
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebXml:Lorg/eclipse/jetty/webapp/Origin;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Origin;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "o"    # Lorg/eclipse/jetty/webapp/Origin;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->name:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    .line 93
    return-void
.end method


# virtual methods
.method public getDescriptor()Lorg/eclipse/jetty/webapp/Descriptor;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->descriptor:Lorg/eclipse/jetty/webapp/Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginType()Lorg/eclipse/jetty/webapp/Origin;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->origin:Lorg/eclipse/jetty/webapp/Origin;

    return-object v0
.end method
