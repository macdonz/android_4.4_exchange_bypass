.class Lcom/android/exchange/adapter/Search$SearchParser;
.super Lcom/android/exchange/adapter/Parser;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchParser"
.end annotation


# instance fields
.field private final mQuery:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private mTotalResults:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    .locals 0
    .parameter "in"
    .parameter "service"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 178
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 179
    iput-object p3, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mQuery:Ljava/lang/String;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Lcom/android/exchange/adapter/Search$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V

    #p0=(Reference);
    return-void
.end method

.method private parseResponse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, res:Z
    :goto_0
    #v0=(Null);v1=(Conflicted);v2=(Conflicted);
    const/16 v1, 0x3cd

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_1

    .line 210
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x3c7

    #v2=(PosShort);
    if-ne v1, v2, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->parseStore()Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 216
    :cond_1
    #v2=(PosByte);
    return v0
.end method

.method private parseResult(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 254
    .local v1, res:Z
    #v1=(Null);
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 255
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);
    const/16 v2, 0x3ce

    #v2=(PosShort);
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-eq v2, v3, :cond_5

    .line 256
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_0
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_1
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3d8

    #v3=(PosShort);
    if-ne v2, v3, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_2
    #v2=(Integer);
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cf

    if-ne v2, v3, :cond_4

    .line 263
    iget-object v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 264
    iget-object v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);
    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 265
    const/4 v2, 0x1

    #v2=(One);
    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 266
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->pushTag(I)V

    .line 267
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {p1, v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 268
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_3

    .line 269
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mQuery:Ljava/lang/String;

    #v3=(Reference);
    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 271
    :cond_3
    #v3=(Conflicted);
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 273
    :cond_4
    #v2=(Integer);v3=(PosShort);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 276
    :cond_5
    #v3=(PosByte);
    return v1
.end method

.method private parseStore()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 220
    #v10=(Null);
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    #v0=(UninitRef);
    iget-object v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    #v5=(Reference);
    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 221
    .local v0, adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    #v0=(Reference);
    new-instance v3, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    #v3=(UninitRef);
    invoke-direct {v3, p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 222
    .local v3, parser:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    #v3=(Reference);
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v2=(Reference);
    const/4 v4, 0x0

    .line 225
    .local v4, res:Z
    :goto_0
    #v4=(Null);v5=(Conflicted);v6=(Conflicted);
    const/16 v5, 0x3c7

    #v5=(PosShort);
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x3

    #v6=(PosByte);
    if-eq v5, v6, :cond_3

    .line 226
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x3cc

    #v6=(PosShort);
    if-ne v5, v6, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_0
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x3d0

    if-ne v5, v6, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValueInt()I

    move-result v5

    iput v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mTotalResults:I

    goto :goto_0

    .line 230
    :cond_1
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x3ce

    if-ne v5, v6, :cond_2

    .line 231
    invoke-direct {p0, v3, v2}, Lcom/android/exchange/adapter/Search$SearchParser;->parseResult(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 238
    :cond_3
    :try_start_0
    #v6=(PosByte);
    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    #v5=(Reference);
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 239
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v5=(Boolean);
    if-eqz v5, :cond_4

    .line 240
    iget-object v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "Saved "

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    #v9=(Integer);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " search results"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :cond_4
    :goto_1
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return v4

    .line 242
    :catch_0
    #v1=(Uninit);
    move-exception v1

    .line 243
    .local v1, e:Landroid/os/RemoteException;
    #v1=(Reference);
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "RemoteException while saving search results."

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 244
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    #v1=(Uninit);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference);
    goto :goto_1
.end method


# virtual methods
.method protected getTotalResults()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mTotalResults:I

    #v0=(Integer);
    return v0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 188
    #v5=(Null);
    const/4 v0, 0x0

    .line 189
    .local v0, res:Z
    #v0=(Null);
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/16 v3, 0x3c5

    #v3=(PosShort);
    if-eq v2, v3, :cond_0

    .line 190
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #v2=(Reference);
    throw v2

    .line 192
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-eq v2, v3, :cond_3

    .line 193
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cc

    #v3=(PosShort);
    if-ne v2, v3, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, status:Ljava/lang/String;
    #v1=(Reference);
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 196
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Search status: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 198
    .end local v1           #status:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v2=(Integer);v3=(PosShort);v4=(Conflicted);
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cd

    if-ne v2, v3, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->parseResponse()Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 204
    :cond_3
    #v3=(PosByte);
    return v0
.end method
