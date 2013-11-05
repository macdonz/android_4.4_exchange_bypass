.class public Lcom/android/exchange/service/EasMailboxSyncHandler;
.super Lcom/android/exchange/service/EasSyncHandler;
.source "EasMailboxSyncHandler.java"


# static fields
.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mMessagesToFetch:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "syncServerId"

    #v2=(Reference);
    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/service/EasMailboxSyncHandler;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 1
    .parameter "context"
    .parameter "contentResolver"
    .parameter "account"
    .parameter "mailbox"
    .parameter "syncExtras"
    .parameter "syncResult"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/android/exchange/service/EasSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 41
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private addFetchCommands(Lcom/android/exchange/adapter/Serializer;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 176
    const/16 v2, 0x16

    #v2=(PosByte);
    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 177
    iget-object v2, p0, Lcom/android/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, serverId:Ljava/lang/String;
    const/16 v2, 0xa

    #v2=(PosByte);
    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    #v2=(Reference);
    const/16 v3, 0xd

    #v3=(PosByte);
    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 180
    .end local v1           #serverId:Ljava/lang/String;
    :cond_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 182
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Conflicted);
    return-void
.end method

.method private addToFetchRequestList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 75
    #v9=(Null);
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/service/EasMailboxSyncHandler;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "flagLoaded=2 AND mailboxKey=?"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v5=(Reference);
    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 81
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    #v0=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    #v0=(Conflicted);
    return-void
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v1=(Reference);
    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v1=(Integer);
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 52
    .local v0, syncLookback:I
    :goto_0
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 67
    const-string v1, "3"

    :goto_1
    return-object v1

    .line 50
    .end local v0           #syncLookback:I
    :cond_0
    #v0=(Uninit);v1=(Integer);
    iget-object v1, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v1=(Reference);
    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v0=(Integer);
    goto :goto_0

    .line 54
    .restart local v0       #syncLookback:I
    :pswitch_0
    const-string v1, "1"

    goto :goto_1

    .line 56
    :pswitch_1
    const-string v1, "2"

    goto :goto_1

    .line 58
    :pswitch_2
    const-string v1, "3"

    goto :goto_1

    .line 60
    :pswitch_3
    const-string v1, "4"

    goto :goto_1

    .line 62
    :pswitch_4
    const-string v1, "5"

    goto :goto_1

    .line 64
    :pswitch_5
    const-string v1, "0"

    goto :goto_1

    .line 52
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected cleanup(I)V
    .locals 1
    .parameter "syncResult"

    .prologue
    .line 191
    const/4 v0, 0x1

    #v0=(One);
    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method protected getFolderClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "Email"

    #v0=(Reference);
    return-object v0
.end method

.method protected getParser(Ljava/io/InputStream;)Lcom/android/exchange/adapter/AbstractSyncParser;
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncParser;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    iget-object v4, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    move-object v3, p1

    #v3=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/EmailSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected getTrafficFlag()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method protected setInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 108
    return-void
.end method

.method protected setNonInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;I)V
    .locals 11
    .parameter "s"
    .parameter "numWindows"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x200

    #v3=(PosShort);
    const/16 v10, 0x22

    #v10=(PosByte);
    const/16 v9, 0x1e

    #v9=(PosByte);
    const/16 v8, 0x17

    #v8=(PosByte);
    const-wide/high16 v6, 0x4028

    .line 113
    #v6=(LongLo);v7=(LongHi);
    invoke-direct {p0}, Lcom/android/exchange/service/EasMailboxSyncHandler;->addToFetchRequestList()V

    .line 120
    iget-object v2, p0, Lcom/android/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 124
    iget-object v2, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v2=(Reference);
    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v2=(Integer);
    const/4 v4, 0x6

    #v4=(PosByte);
    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    .line 125
    .local v0, isTrashMailbox:Z
    :goto_0
    #v0=(Boolean);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasMailboxSyncHandler;->getProtocolVersion()D

    move-result-wide v4

    #v4=(DoubleLo);v5=(DoubleHi);
    cmpg-double v2, v4, v6

    #v2=(Byte);
    if-gez v2, :cond_2

    .line 126
    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1, v9}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 132
    :cond_0
    :goto_1
    #v2=(Conflicted);
    const/16 v2, 0x13

    #v2=(PosByte);
    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 134
    mul-int/lit8 v1, p2, 0xa

    .line 135
    .local v1, windowSize:I
    #v1=(Integer);
    const/16 v2, 0x20a

    #v2=(PosShort);
    if-le v1, v2, :cond_4

    .line 136
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    const-string v3, "Max window size reached and still no data"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 124
    .end local v0           #isTrashMailbox:Z
    .end local v1           #windowSize:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(PosShort);v4=(PosByte);v5=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 130
    .restart local v0       #isTrashMailbox:Z
    :cond_2
    #v0=(Boolean);v2=(Byte);v4=(DoubleLo);v5=(DoubleHi);
    if-eqz v0, :cond_3

    const-string v2, "0"

    :goto_2
    #v2=(Reference);
    invoke-virtual {p1, v9, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    :cond_3
    #v2=(Byte);
    const-string v2, "1"

    #v2=(Reference);
    goto :goto_2

    .line 138
    .restart local v1       #windowSize:I
    :cond_4
    #v1=(Integer);v2=(PosShort);
    const/16 v2, 0x15

    #v2=(PosByte);
    if-ge v1, v3, :cond_5

    .end local v1           #windowSize:I
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 140
    invoke-virtual {p1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 142
    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/android/exchange/service/EasMailboxSyncHandler;->getEmailFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 144
    invoke-virtual {p0}, Lcom/android/exchange/service/EasMailboxSyncHandler;->getProtocolVersion()D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    cmpl-double v2, v2, v6

    #v2=(Byte);
    if-ltz v2, :cond_6

    .line 145
    const/16 v2, 0x445

    #v2=(PosShort);
    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 147
    const/16 v2, 0x446

    const-string v3, "2"

    #v3=(Reference);
    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 148
    const/16 v2, 0x447

    const-string v3, "200000"

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 149
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 155
    :goto_4
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 165
    .end local v0           #isTrashMailbox:Z
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .restart local v0       #isTrashMailbox:Z
    .restart local v1       #windowSize:I
    :cond_5
    #v0=(Boolean);v1=(Integer);v2=(PosByte);v3=(PosShort);v4=(DoubleLo);v5=(DoubleHi);
    move v1, v3

    .line 138
    #v1=(PosShort);
    goto :goto_3

    .line 152
    .end local v1           #windowSize:I
    :cond_6
    #v1=(Integer);v2=(Byte);v3=(DoubleHi);
    const-string v2, "2"

    #v2=(Reference);
    invoke-virtual {p1, v10, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 153
    const/16 v2, 0x23

    #v2=(PosByte);
    const-string v3, "7"

    #v3=(Reference);
    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_4

    .line 160
    .end local v0           #isTrashMailbox:Z
    :cond_7
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(PosShort);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 161
    const-string v2, "0"

    #v2=(Reference);
    invoke-virtual {p1, v10, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 162
    const/16 v2, 0x19

    #v2=(PosByte);
    const-string v3, "7"

    #v3=(Reference);
    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 163
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_5
.end method

.method protected setUpsyncCommands(Lcom/android/exchange/adapter/Serializer;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/exchange/service/EasMailboxSyncHandler;->addFetchCommands(Lcom/android/exchange/adapter/Serializer;)V

    .line 187
    return-void
.end method
