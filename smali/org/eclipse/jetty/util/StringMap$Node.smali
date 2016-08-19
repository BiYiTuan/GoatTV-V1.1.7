.class Lorg/eclipse/jetty/util/StringMap$Node;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field _char:[C

.field _children:[Lorg/eclipse/jetty/util/StringMap$Node;

.field _key:Ljava/lang/String;

.field _next:Lorg/eclipse/jetty/util/StringMap$Node;

.field _ochar:[C

.field _value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "ignoreCase"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, p3

    .line 562
    .local v2, "l":I
    new-array v4, v2, [C

    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 563
    new-array v4, v2, [C

    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 566
    add-int v4, p3, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 567
    .local v0, "c":C
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aput-char v0, v4, v1

    .line 568
    if-eqz p1, :cond_1

    .line 570
    move v3, v0

    .line 571
    .local v3, "o":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 575
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aput-char v3, v4, v1

    .line 564
    .end local v3    # "o":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .restart local v3    # "o":C
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_1

    .line 578
    .end local v0    # "c":C
    .end local v3    # "o":C
    :cond_3
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 629
    const-string v1, "{["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    if-nez v1, :cond_1

    .line 631
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v1, :cond_3

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 644
    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 646
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v1, v1, v0

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/util/StringMap$Node;->toString(Ljava/lang/StringBuilder;)V

    .line 642
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 634
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 648
    :cond_2
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 651
    .end local v0    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v1, :cond_4

    .line 654
    const-string v1, ",\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/util/StringMap$Node;->toString(Ljava/lang/StringBuilder;)V

    .line 657
    :cond_4
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 618
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method split(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$Node;
    .locals 7
    .param p1, "map"    # Lorg/eclipse/jetty/util/StringMap;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 582
    new-instance v1, Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>()V

    .line 583
    .local v1, "split":Lorg/eclipse/jetty/util/StringMap$Node;
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v3, v3

    sub-int v0, v3, p2

    .line 585
    .local v0, "sl":I
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 586
    .local v2, "tmp":[C
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 587
    new-array v3, v0, [C

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 588
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    invoke-static {v2, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    iget-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    invoke-static {v2, p2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    if-eqz v3, :cond_0

    .line 593
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 594
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 595
    new-array v3, v0, [C

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 596
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    invoke-static {v2, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    iget-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    invoke-static {v2, p2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 601
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 602
    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 603
    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 604
    iget-object v3, p1, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    iget-object v3, p1, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    .line 608
    iget v3, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    new-array v3, v3, [Lorg/eclipse/jetty/util/StringMap$Node;

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    .line 609
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v4, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aput-object v1, v3, v4

    .line 610
    iget-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v4, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    if-eq v3, v1, :cond_2

    .line 611
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v4, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aput-object v1, v3, v4

    .line 613
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/StringMap$Node;->toString(Ljava/lang/StringBuilder;)V

    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
