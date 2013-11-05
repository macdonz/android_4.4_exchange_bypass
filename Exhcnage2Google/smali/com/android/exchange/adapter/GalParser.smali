.class public Lcom/android/exchange/adapter/GalParser;
.super Lcom/android/exchange/adapter/Parser;
.source "GalParser.java"


# instance fields
.field mGalResult:Lcom/android/exchange/provider/GalResult;

.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 30
    #p0=(Reference);
    new-instance v0, Lcom/android/exchange/provider/GalResult;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/exchange/provider/GalResult;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    .line 34
    iput-object p2, p0, Lcom/android/exchange/adapter/GalParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 35
    return-void
.end method


# virtual methods
.method public getGalResult()Lcom/android/exchange/provider/GalResult;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    #v0=(Reference);
    return-object v0
.end method

.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x3c5

    #v2=(PosShort);
    if-eq v1, v2, :cond_0

    .line 44
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 46
    :cond_0
    :goto_0
    #v0=(Null);v1=(Conflicted);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_2

    .line 47
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x3cd

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/GalParser;->parseResponse(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 50
    :cond_1
    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 53
    :cond_2
    #v2=(PosByte);
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    #v1=(Reference);
    iget v1, v1, Lcom/android/exchange/provider/GalResult;->total:I

    #v1=(Integer);
    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    #v0=(Boolean);
    return v0
.end method

.method public parseProperties(Lcom/android/exchange/provider/GalResult;)V
    .locals 5
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Lcom/android/exchange/provider/GalResult$GalData;

    #v2=(UninitRef);
    invoke-direct {v2}, Lcom/android/exchange/provider/GalResult$GalData;-><init>()V

    .line 58
    .local v2, galData:Lcom/android/exchange/provider/GalResult$GalData;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    const/16 v3, 0x3c7

    #v3=(PosShort);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v3

    #v3=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-eq v3, v4, :cond_0

    .line 59
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 99
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, displayName:Ljava/lang/String;
    #v0=(Reference);
    const-string v3, "displayName"

    #v3=(Reference);
    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object v0, v2, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 67
    .end local v0           #displayName:Ljava/lang/String;
    :pswitch_1
    #v0=(Conflicted);v3=(Integer);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, emailAddress:Ljava/lang/String;
    #v1=(Reference);
    const-string v3, "emailAddress"

    #v3=(Reference);
    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object v1, v2, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    goto :goto_0

    .line 72
    .end local v1           #emailAddress:Ljava/lang/String;
    :pswitch_2
    #v1=(Conflicted);v3=(Integer);
    const-string v3, "workPhone"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_3
    #v3=(Integer);v4=(PosByte);
    const-string v3, "office"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_4
    #v3=(Integer);v4=(PosByte);
    const-string v3, "title"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_5
    #v3=(Integer);v4=(PosByte);
    const-string v3, "company"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_6
    #v3=(Integer);v4=(PosByte);
    const-string v3, "alias"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_7
    #v3=(Integer);v4=(PosByte);
    const-string v3, "firstName"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_8
    #v3=(Integer);v4=(PosByte);
    const-string v3, "lastName"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_9
    #v3=(Integer);v4=(PosByte);
    const-string v3, "homePhone"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_a
    #v3=(Integer);v4=(PosByte);
    const-string v3, "mobilePhone"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_0
    #v3=(Integer);v4=(PosByte);
    invoke-virtual {p1, v2}, Lcom/android/exchange/provider/GalResult;->addGalData(Lcom/android/exchange/provider/GalResult$GalData;)V

    .line 103
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x405
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
    .end packed-switch
.end method

.method public parseResponse(Lcom/android/exchange/provider/GalResult;)V
    .locals 2
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :goto_0
    const/16 v0, 0x3cd

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 117
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3c7

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseStore(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 123
    :cond_1
    #v1=(PosByte);
    return-void
.end method

.method public parseResult(Lcom/android/exchange/provider/GalResult;)V
    .locals 2
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :goto_0
    const/16 v0, 0x3c7

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 107
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3cf

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseProperties(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 113
    :cond_1
    #v1=(PosByte);
    return-void
.end method

.method public parseStore(Lcom/android/exchange/provider/GalResult;)V
    .locals 2
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :goto_0
    const/16 v0, 0x3c7

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_3

    .line 127
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3ce

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseResult(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 129
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3cb

    if-ne v0, v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3d0

    if-ne v0, v1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueInt()I

    move-result v0

    iput v0, p1, Lcom/android/exchange/provider/GalResult;->total:I

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 141
    :cond_3
    #v1=(PosByte);
    return-void
.end method
