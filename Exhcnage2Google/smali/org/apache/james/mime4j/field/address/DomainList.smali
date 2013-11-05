.class public Lorg/apache/james/mime4j/field/address/DomainList;
.super Ljava/lang/Object;
.source "DomainList.java"


# instance fields
.field private domains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "dontCopy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    #p0=(Reference);
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    .end local p1           #domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    #v0=(Conflicted);
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    .line 42
    :goto_1
    #v1=(Conflicted);
    return-void

    .line 39
    .restart local p1       #domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #v0=(Reference);
    move-object p1, v0

    goto :goto_0

    .line 41
    :cond_1
    #v0=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 57
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/DomainList;->size()I

    move-result v0

    #v0=(Integer);
    if-gt v0, p1, :cond_1

    .line 58
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 59
    :cond_1
    #v0=(Integer);
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toRouteString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v1, out:Ljava/lang/StringBuffer;
    #v1=(Reference);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    #v2=(Integer);
    if-ge v0, v2, :cond_1

    .line 69
    const-string v2, "@"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/DomainList;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    add-int/lit8 v2, v0, 0x1

    #v2=(Integer);
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-ge v2, v3, :cond_0

    .line 72
    const-string v2, ","

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_0
    #v2=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    #v2=(Integer);v3=(Conflicted);
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    return-object v2
.end method
