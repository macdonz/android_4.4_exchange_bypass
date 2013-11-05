.class public abstract Lcom/android/exchange/adapter/AbstractSyncParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractSyncParser.java"


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "context"
    .parameter "resolver"
    .parameter "in"
    .parameter "mailbox"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p3}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 56
    #p0=(Reference);
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 0
    .parameter "p"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Lcom/android/exchange/adapter/Parser;)V

    .line 66
    #p0=(Reference);
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 0
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 61
    #p0=(Reference);
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 62
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "context"
    .parameter "resolver"
    .parameter "mailbox"
    .parameter "account"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 78
    iput-object p3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 79
    iput-object p4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 80
    return-void
.end method

.method private init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 70
    iget-object v0, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v2=(Reference);
    iget-object v3, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v3=(Reference);
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 72
    return-void
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    #v0=(Boolean);
    return v0
.end method

.method public parse()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x5

    #v13=(PosByte);
    const/4 v12, 0x3

    #v12=(PosByte);
    const/4 v11, 0x1

    #v11=(One);
    const/4 v10, 0x0

    .line 126
    #v10=(Null);
    const/4 v3, 0x0

    .line 127
    .local v3, moreAvailable:Z
    #v3=(Null);
    const/4 v5, 0x0

    .line 128
    .local v5, newSyncKey:Z
    #v5=(Null);
    iput-boolean v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 130
    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v7

    #v7=(Integer);
    if-eq v7, v13, :cond_0

    .line 131
    new-instance v7, Lcom/android/exchange/adapter/Parser$EasParserException;

    #v7=(UninitRef);
    invoke-direct {v7, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    #v7=(Reference);
    throw v7

    .line 134
    :cond_0
    #v7=(Integer);
    const/4 v2, 0x0

    .line 135
    .local v2, mailboxUpdated:Z
    #v2=(Null);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    #v0=(Reference);v2=(Boolean);v3=(Boolean);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v7

    #v7=(Integer);
    if-eq v7, v12, :cond_f

    .line 139
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0xf

    #v8=(PosByte);
    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1c

    if-eq v7, v8, :cond_1

    .line 141
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0xe

    if-ne v7, v8, :cond_9

    .line 143
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v6

    .line 144
    .local v6, status:I
    #v6=(Integer);
    if-eq v6, v11, :cond_1

    .line 145
    if-eq v6, v12, :cond_2

    invoke-static {v6}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 147
    :cond_2
    #v7=(Integer);
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v7=(Reference);
    const-string v8, "0"

    #v8=(Reference);
    iput-object v8, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 148
    const/4 v5, 0x1

    .line 149
    #v5=(One);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->wipe()V

    .line 151
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0

    .line 152
    :cond_3
    #v3=(Boolean);v5=(Boolean);v7=(Boolean);v8=(PosByte);
    const/16 v7, 0x10

    #v7=(PosByte);
    if-eq v6, v7, :cond_4

    if-ne v6, v13, :cond_5

    .line 156
    :cond_4
    new-instance v7, Ljava/io/IOException;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    #v7=(Reference);
    throw v7

    .line 157
    :cond_5
    #v7=(PosByte);
    const/16 v7, 0x8

    if-eq v6, v7, :cond_6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_7

    .line 165
    :cond_6
    new-instance v7, Ljava/io/IOException;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    #v7=(Reference);
    throw v7

    .line 166
    :cond_7
    #v7=(PosByte);
    const/4 v7, 0x7

    if-ne v6, v7, :cond_8

    .line 169
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0

    .line 172
    :cond_8
    #v3=(Boolean);
    new-instance v7, Lcom/android/exchange/CommandStatusException;

    #v7=(UninitRef);
    invoke-direct {v7, v6}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    #v7=(Reference);
    throw v7

    .line 175
    .end local v6           #status:I
    :cond_9
    #v6=(Conflicted);v7=(Integer);
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x16

    if-ne v7, v8, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    goto :goto_0

    .line 177
    :cond_a
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_b

    .line 178
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    goto :goto_0

    .line 179
    :cond_b
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_c

    .line 180
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0

    .line 181
    :cond_c
    #v3=(Boolean);
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_e

    .line 182
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v8, "0"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_d

    .line 183
    const/4 v3, 0x1

    .line 185
    :cond_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, newKey:Ljava/lang/String;
    #v4=(Reference);
    const/4 v7, 0x4

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "Parsed key for "

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v8, v7, v11

    const/4 v8, 0x2

    #v8=(PosByte);
    const-string v9, ": "

    #v9=(Reference);
    aput-object v9, v7, v8

    aput-object v4, v7, v12

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 187
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 188
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v7=(Reference);
    iput-object v4, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 189
    const-string v7, "syncKey"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x1

    .line 191
    #v2=(One);
    const/4 v5, 0x1

    #v5=(One);
    goto/16 :goto_0

    .line 194
    .end local v4           #newKey:Ljava/lang/String;
    :cond_e
    #v2=(Boolean);v4=(Conflicted);v5=(Boolean);v7=(Integer);v9=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 199
    :cond_f
    #v8=(Conflicted);
    if-eqz v3, :cond_10

    if-nez v5, :cond_10

    .line 200
    const-string v7, "Exchange"

    #v7=(Reference);
    const-string v8, "Looping detected"

    #v8=(Reference);
    new-array v9, v10, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    iput-boolean v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 206
    :cond_10
    :try_start_0
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 207
    if-eqz v2, :cond_11

    .line 208
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    #v8=(Reference);
    invoke-virtual {v7, v8, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :cond_11
    :goto_1
    #v1=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-eqz v3, :cond_12

    .line 217
    new-array v7, v11, [Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "MoreAvailable"

    #v8=(Reference);
    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 219
    :cond_12
    #v7=(Conflicted);v8=(Conflicted);
    return v3

    .line 210
    :catch_0
    #v1=(Uninit);
    move-exception v1

    .line 211
    .local v1, e:Landroid/os/RemoteException;
    #v1=(Reference);
    const-string v7, "Exchange"

    #v7=(Reference);
    const-string v8, "Failed to commit changes"

    #v8=(Reference);
    new-array v9, v11, [Ljava/lang/Object;

    #v9=(Reference);
    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 212
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    #v1=(Uninit);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v1

    .line 213
    .local v1, e:Landroid/content/OperationApplicationException;
    #v1=(Reference);
    const-string v7, "Exchange"

    #v7=(Reference);
    const-string v8, "Failed to commit changes"

    #v8=(Reference);
    new-array v9, v11, [Ljava/lang/Object;

    #v9=(Reference);
    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipParser(I)V
    .locals 2
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .locals 0
    .parameter "strings"

    .prologue
    .line 227
    return-void
.end method

.method protected abstract wipe()V
.end method
