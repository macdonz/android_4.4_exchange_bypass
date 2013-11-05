.class public Lcom/android/exchange/adapter/MoveItemsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "MoveItemsParser.java"


# instance fields
.field private mNewServerId:Ljava/lang/String;

.field private mSourceServerId:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 29
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 49
    return-void
.end method


# virtual methods
.method public getNewServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getSourceServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mSourceServerId:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    #v0=(Integer);
    return v0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 107
    #v3=(Null);
    const/4 v0, 0x0

    .line 108
    .local v0, res:Z
    #v0=(Null);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x145

    #v2=(PosShort);
    if-eq v1, v2, :cond_0

    .line 109
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 111
    :cond_0
    :goto_0
    #v1=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_2

    .line 112
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x14a

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->parseResponse()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_0

    .line 118
    :cond_2
    #v2=(PosByte);
    return v0
.end method

.method public parseResponse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    .line 64
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(One);
    const/16 v1, 0x14a

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    if-eq v1, v7, :cond_4

    .line 65
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x14b

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValueInt()I

    move-result v0

    .line 68
    .local v0, status:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 86
    :pswitch_0
    const/4 v1, 0x2

    #v1=(PosByte);
    iput v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 89
    :goto_1
    #v1=(Integer);
    if-eq v0, v7, :cond_0

    .line 91
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Error in MoveItems: %d"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 74
    :pswitch_1
    #v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    iput v5, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 78
    :pswitch_2
    iput v7, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 93
    .end local v0           #status:I
    :cond_1
    #v0=(Conflicted);
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x14c

    if-ne v1, v2, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    .line 95
    const-string v1, "Exchange"

    const-string v2, "Moved message id is now: %s"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 96
    :cond_2
    #v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x147

    if-ne v1, v2, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mSourceServerId:Ljava/lang/String;

    .line 98
    const-string v1, "Exchange"

    const-string v2, "Source message id is: %s"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 100
    :cond_3
    #v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_0

    .line 103
    :cond_4
    #v2=(Conflicted);
    return-void

    .line 68
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
