.class public Lcom/android/exchange/adapter/PingParser;
.super Lcom/android/exchange/adapter/Parser;
.source "PingParser.java"


# instance fields
.field private mHeartbeatInterval:I

.field private mMaxFolders:I

.field private mPingStatus:I

.field private final mSyncList:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 64
    #v1=(Byte);
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 58
    #p0=(Reference);
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mMaxFolders:I

    .line 61
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mHeartbeatInterval:I

    .line 65
    return-void
.end method

.method private getValue(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "currentValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/PingParser;->getValue(Ljava/lang/String;III)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private getValue(Ljava/lang/String;III)I
    .locals 4
    .parameter "name"
    .parameter "currentValue"
    .parameter "minValue"
    .parameter "maxValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq p2, v1, :cond_0

    .line 163
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Response has multiple values for "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 165
    :cond_0
    #v1=(Byte);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v0

    .line 166
    .local v0, value:I
    #v0=(Integer);
    if-lt v0, p3, :cond_1

    if-lez p4, :cond_2

    if-le v0, p4, :cond_2

    .line 167
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 169
    :cond_2
    #v1=(Byte);v2=(Uninit);v3=(Uninit);
    return v0
.end method

.method private parsePingFolders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    const/16 v1, 0x349

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_1

    .line 139
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x34a

    #v2=(PosShort);
    if-ne v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, serverId:Ljava/lang/String;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v1, "Exchange"

    const-string v2, "Changes found in: %s"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 145
    .end local v0           #serverId:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 148
    :cond_1
    #v2=(PosByte);
    return-void
.end method

.method public static shouldPingAgain(I)Z
    .locals 2
    .parameter "pingStatus"

    .prologue
    const/4 v0, 0x1

    .line 126
    #v0=(One);
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_1
    #v0=(One);v1=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public getHeartbeatInterval()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    #v0=(Integer);
    const/4 v1, 0x5

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 108
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mHeartbeatInterval:I

    goto :goto_0
.end method

.method public getPingStatus()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    #v0=(Integer);
    return v0
.end method

.method public getSyncList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    #v0=(Reference);
    goto :goto_0
.end method

.method public parse()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    #v7=(Byte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 191
    #v5=(Null);
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x345

    #v2=(PosShort);
    if-eq v1, v2, :cond_0

    .line 192
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Ping response does not include a Ping element"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 194
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_6

    .line 195
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x347

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 196
    const-string v1, "Status"

    #v1=(Reference);
    iget v2, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    #v2=(Integer);
    const/16 v3, 0xb1

    #v3=(PosShort);
    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/exchange/adapter/PingParser;->getValue(Ljava/lang/String;III)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    goto :goto_0

    .line 198
    :cond_1
    #v2=(PosShort);v3=(Conflicted);
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x34d

    if-ne v1, v2, :cond_2

    .line 199
    const-string v1, "MaxFolders"

    #v1=(Reference);
    iget v2, p0, Lcom/android/exchange/adapter/PingParser;->mMaxFolders:I

    #v2=(Integer);
    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/PingParser;->getValue(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mMaxFolders:I

    goto :goto_0

    .line 200
    :cond_2
    #v2=(PosShort);
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x349

    if-ne v1, v2, :cond_4

    .line 201
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    .line 202
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Response has multiple values for Folders"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 204
    :cond_3
    #v1=(Boolean);v2=(PosShort);
    invoke-direct {p0}, Lcom/android/exchange/adapter/PingParser;->parsePingFolders()V

    .line 205
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    .local v0, count:I
    #v0=(Integer);
    const-string v1, "Exchange"

    const-string v2, "Folders has %d elements"

    #v2=(Reference);
    new-array v3, v6, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Folders was empty"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 210
    .end local v0           #count:I
    :cond_4
    #v0=(Conflicted);v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x348

    if-ne v1, v2, :cond_5

    .line 211
    const-string v1, "HeartbeatInterval"

    #v1=(Reference);
    iget v2, p0, Lcom/android/exchange/adapter/PingParser;->mHeartbeatInterval:I

    #v2=(Integer);
    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/PingParser;->getValue(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mHeartbeatInterval:I

    goto :goto_0

    .line 214
    :cond_5
    #v2=(PosShort);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 220
    :cond_6
    #v2=(PosByte);
    iget v1, p0, Lcom/android/exchange/adapter/PingParser;->mPingStatus:I

    packed-switch v1, :pswitch_data_0

    .line 239
    :cond_7
    :pswitch_0
    return v6

    .line 222
    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "No status set in ping response"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 224
    :pswitch_2
    #v1=(Integer);v2=(PosByte);
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_7

    .line 225
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "No changes found in ping response"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 229
    :pswitch_3
    #v1=(Integer);v2=(PosByte);
    iget v1, p0, Lcom/android/exchange/adapter/PingParser;->mHeartbeatInterval:I

    if-ne v1, v7, :cond_7

    .line 230
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "No value specified for heartbeat out of bounds"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 234
    :pswitch_4
    #v1=(Integer);v2=(PosByte);
    iget v1, p0, Lcom/android/exchange/adapter/PingParser;->mMaxFolders:I

    if-ne v1, v7, :cond_7

    .line 235
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "No value specified for too many folders"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 220
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
