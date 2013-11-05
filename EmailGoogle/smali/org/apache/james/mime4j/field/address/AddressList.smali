.class public Lorg/apache/james/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
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
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    #p0=(Reference);
    if-eqz p1, :cond_1

    .line 43
    if-eqz p2, :cond_0

    .end local p1           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :goto_0
    #v0=(Conflicted);
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    .line 46
    :goto_1
    #v1=(Conflicted);
    return-void

    .line 43
    .restart local p1       #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #v0=(Reference);
    move-object p1, v0

    goto :goto_0

    .line 45
    :cond_1
    #v0=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 3
    .parameter "rawAddressList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    #v0=(UninitRef);
    new-instance v1, Ljava/io/StringReader;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v0, parser:Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    #v0=(Reference);
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 7

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, groupDetected:Z
    #v1=(Null);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);v4=(Conflicted);
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    #v4=(Integer);
    if-ge v2, v4, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v4

    #v4=(Reference);
    instance-of v4, v4, Lorg/apache/james/mime4j/field/address/Mailbox;

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 79
    :cond_0
    #v1=(Boolean);v4=(Integer);
    if-nez v1, :cond_2

    .line 80
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    #v4=(UninitRef);
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    invoke-direct {v4, v5, v6}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);v6=(Conflicted);
    return-object v4

    .line 72
    :cond_1
    #v0=(Uninit);v1=(Null);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    #v1=(Boolean);v4=(Integer);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    #v3=(Reference);
    const/4 v2, 0x0

    :goto_2
    #v0=(Conflicted);
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 84
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 85
    .local v0, addr:Lorg/apache/james/mime4j/field/address/Address;
    #v0=(Reference);
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 90
    .end local v0           #addr:Lorg/apache/james/mime4j/field/address/Address;
    :cond_3
    #v0=(Conflicted);
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    #v4=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    #v4=(Reference);
    goto :goto_1
.end method

.method public get(I)Lorg/apache/james/mime4j/field/address/Address;
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v0

    #v0=(Integer);
    if-gt v0, p1, :cond_1

    .line 60
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 61
    :cond_1
    #v0=(Integer);
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
