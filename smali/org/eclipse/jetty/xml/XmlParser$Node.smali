.class public Lorg/eclipse/jetty/xml/XmlParser$Node;
.super Ljava/util/AbstractList;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private _attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

.field private _lastString:Z

.field private _list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _parent:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field private _path:Ljava/lang/String;

.field private _tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "parent"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 492
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_lastString:Z

    .line 498
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_parent:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 499
    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    .line 501
    if-eqz p3, :cond_2

    .line 503
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    iput-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 506
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    :cond_0
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    new-instance v3, Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/eclipse/jetty/xml/XmlParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized toString(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "tag"    # Z

    .prologue
    .line 712
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 714
    :try_start_0
    const-string v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    if-eqz v2, :cond_0

    .line 719
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 721
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 732
    if-eqz p2, :cond_1

    .line 733
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 736
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 737
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 734
    .end local v1    # "o":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v2, :cond_3

    .line 740
    check-cast v1, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1, p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(Ljava/lang/StringBuilder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 712
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 742
    .restart local v0    # "i":I
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 744
    .end local v1    # "o":Ljava/lang/Object;
    :cond_4
    if-eqz p2, :cond_5

    .line 746
    const-string v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    .end local v0    # "i":I
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 751
    :cond_6
    if-eqz p2, :cond_5

    .line 752
    :try_start_2
    const-string v2, "/>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 628
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    .line 630
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 632
    iget-boolean v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_lastString:Z

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 635
    .local v0, "last":I
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 639
    .end local v0    # "last":I
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_lastString:Z

    .line 646
    :goto_1
    return-void

    .line 638
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_lastString:Z

    .line 644
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    .line 654
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 612
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 613
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 615
    check-cast v1, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 616
    .local v1, "n":Lorg/eclipse/jetty/xml/XmlParser$Node;
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    .end local v0    # "i":I
    .end local v1    # "n":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 610
    .restart local v0    # "i":I
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 572
    .end local p2    # "dft":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 569
    .restart local p2    # "dft":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 569
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAttributes()[Lorg/eclipse/jetty/xml/XmlParser$Attribute;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_attrs:[Lorg/eclipse/jetty/xml/XmlParser$Attribute;

    return-object v0
.end method

.method public getParent()Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_parent:Lorg/eclipse/jetty/xml/XmlParser$Node;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getParent()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getParent()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getParent()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_path:Ljava/lang/String;

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_path:Ljava/lang/String;

    return-object v0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_path:Ljava/lang/String;

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tags"    # Z
    .param p3, "trim"    # Z

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 668
    .local v0, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_1

    .line 669
    const/4 v1, 0x0

    .line 673
    :cond_0
    :goto_0
    return-object v1

    .line 670
    :cond_1
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 672
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/eclipse/jetty/xml/XmlParser$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Node$1;-><init>(Lorg/eclipse/jetty/xml/XmlParser$Node;Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Z

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(Ljava/lang/StringBuilder;Z)V

    .line 692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 690
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Z
    .param p2, "trim"    # Z

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 706
    :cond_0
    monitor-exit p0

    return-object v0

    .line 703
    .end local v0    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
