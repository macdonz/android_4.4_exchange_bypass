.class public Lcom/android/exchange/adapter/EmailSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    }
.end annotation


# static fields
.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String; = null

.field static final LAST_VERB_FORWARD:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY_ALL:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final UPDATES_PROJECTION:[Ljava/lang/String;


# instance fields
.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFetchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLooping:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 96
    #v3=(Null);
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "flagRead"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    #v1=(PosByte);
    const-string v2, "flagFavorite"

    #v2=(Reference);
    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 123
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 134
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1240
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    .line 1241
    .local v1, id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1245
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    .line 1246
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1249
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method private static formatTwo(I)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 1274
    const/16 v0, 0xa

    #v0=(PosByte);
    if-ge p0, v0, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "0"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, 0x30

    #v1=(Integer);
    int-to-char v1, v1

    #v1=(Char);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(PosByte);v1=(Uninit);
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v1=(Reference);
    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 152
    .local v0, syncLookback:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v1=(Integer);
    if-nez v1, :cond_1

    .line 154
    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 156
    :cond_1
    #v1=(Conflicted);
    packed-switch v0, :pswitch_data_0

    .line 171
    const-string v1, "3"

    :goto_0
    #v1=(Reference);
    return-object v1

    .line 158
    :pswitch_0
    #v1=(Conflicted);
    const-string v1, "1"

    #v1=(Reference);
    goto :goto_0

    .line 160
    :pswitch_1
    #v1=(Conflicted);
    const-string v1, "2"

    #v1=(Reference);
    goto :goto_0

    .line 162
    :pswitch_2
    #v1=(Conflicted);
    const-string v1, "3"

    #v1=(Reference);
    goto :goto_0

    .line 164
    :pswitch_3
    #v1=(Conflicted);
    const-string v1, "4"

    #v1=(Reference);
    goto :goto_0

    .line 166
    :pswitch_4
    #v1=(Conflicted);
    const-string v1, "5"

    #v1=(Reference);
    goto :goto_0

    .line 168
    :pswitch_5
    #v1=(Conflicted);
    const-string v1, "0"

    #v1=(Reference);
    goto :goto_0

    .line 156
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

.method private static messageReferenced(Landroid/content/ContentResolver;J)Z
    .locals 7
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 1310
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "sourceMessageKey=?"

    #v3=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    new-array v4, v0, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v0

    const/4 v5, 0x0

    #v5=(Null);
    move-object v0, p0

    #v0=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1313
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    #v6=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1315
    #v0=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1313
    return v0

    .line 1315
    :catchall_0
    #v0=(Reference);
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 7

    .prologue
    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mailboxKey=? AND (flags&512)!=0"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v5=(Reference);
    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 1261
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 1264
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    return-void

    .line 1268
    :catch_0
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    goto :goto_0

    .line 1266
    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "calendar"

    .prologue
    const/16 v3, 0x3a

    #v3=(PosByte);
    const/16 v2, 0x2d

    .line 1286
    #v2=(PosByte);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    const/4 v1, 0x5

    #v1=(PosByte);
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const/16 v1, 0x54

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1296
    const/16 v1, 0xc

    #v1=(PosByte);
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    const/16 v1, 0xd

    #v1=(PosByte);
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const-string v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1235
    const-string v0, "Email"

    #v0=(Reference);
    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    #v0=(Boolean);
    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 259
    .local v0, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->parse()Z

    move-result v1

    .line 261
    .local v1, res:Z
    #v1=(Boolean);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isLooping()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 263
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 264
    :cond_0
    const/4 v1, 0x1

    .line 267
    .end local v1           #res:Z
    :cond_1
    return v1
.end method

.method sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter "s"
    .parameter
    .parameter "first"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, deletedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1332
    #v4=(Null);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1335
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v5, "mailboxKey="

    #v5=(Reference);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1339
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1341
    :cond_0
    :goto_0
    :try_start_0
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 1342
    const/16 v1, 0xb

    #v1=(PosByte);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1344
    .local v7, serverId:Ljava/lang/String;
    #v7=(Reference);
    if-eqz v7, :cond_0

    .line 1347
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1348
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    const-string v3, "Postponing deletion of referenced message: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1359
    .end local v7           #serverId:Ljava/lang/String;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1350
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_1
    #v1=(Boolean);v2=(LongHi);v7=(Reference);
    if-eqz p3, :cond_2

    .line 1351
    const/16 v1, 0x16

    :try_start_1
    #v1=(PosByte);
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1352
    const/4 p3, 0x0

    .line 1355
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    #v1=(Reference);
    const/16 v2, 0xd

    #v2=(PosByte);
    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1356
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1359
    .end local v7           #serverId:Ljava/lang/String;
    :cond_3
    #v1=(Boolean);v2=(Conflicted);v7=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1362
    return p3
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 32
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1367
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1369
    .local v4, cr:Landroid/content/ContentResolver;
    #v4=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 1370
    const/4 v5, 0x0

    .line 1529
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Null);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);
    return v5

    .line 1374
    :cond_0
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Boolean);v6=(Reference);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v5=(Reference);
    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v5=(Integer);
    const/4 v6, 0x3

    #v6=(PosByte);
    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v5=(Reference);
    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v5=(Integer);
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1375
    :cond_1
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_0

    .line 1379
    :cond_2
    #v5=(Integer);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v14

    .line 1381
    .local v14, firstCommand:Z
    #v14=(Boolean);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_4

    .line 1385
    if-eqz v14, :cond_3

    .line 1386
    const/16 v5, 0x16

    #v5=(PosByte);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1387
    const/4 v14, 0x0

    .line 1389
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    #v6=(PosByte);v7=(Conflicted);v18=(Reference);v27=(Conflicted);
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    #v27=(Reference);
    check-cast v27, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    .line 1390
    .local v27, req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    const/16 v5, 0xa

    #v5=(PosByte);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0xd

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    .line 1395
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v27           #req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    :cond_4
    #v5=(Boolean);v7=(Conflicted);v18=(Conflicted);v27=(Conflicted);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v6=(Reference);
    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v6=(LongLo);v7=(LongHi);
    const/4 v8, 0x6

    #v8=(PosByte);
    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v29

    .line 1399
    .local v29, trashMailboxId:J
    #v29=(LongLo);v30=(LongHi);
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    #v6=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "mailboxKey="

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1403
    .local v10, c:Landroid/database/Cursor;
    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1405
    :try_start_0
    new-instance v13, Landroid/content/ContentValues;

    #v13=(UninitRef);
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1406
    .local v13, cv:Landroid/content/ContentValues;
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Reference);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v28=(Conflicted);v31=(Conflicted);
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_11

    .line 1407
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1409
    .local v19, id:J
    #v19=(LongLo);v20=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 1416
    .local v12, currentCursor:Landroid/database/Cursor;
    :try_start_1
    #v12=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_5

    .line 1519
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1523
    .end local v12           #currentCursor:Landroid/database/Cursor;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #id:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v12=(Conflicted);v13=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-exception v5

    #v5=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1420
    .restart local v12       #currentCursor:Landroid/database/Cursor;
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v19       #id:J
    :cond_5
    #v0=(LongLo);v1=(LongHi);v5=(Boolean);v6=(Reference);v7=(Null);v8=(Null);v12=(Reference);v13=(Reference);v19=(LongLo);v20=(LongHi);
    const/4 v5, 0x2

    :try_start_3
    #v5=(PosByte);
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v28

    .line 1421
    .local v28, serverId:Ljava/lang/String;
    #v28=(Reference);
    if-nez v28, :cond_6

    .line 1519
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1425
    :cond_6
    const/16 v16, 0x0

    .line 1426
    .local v16, flagChange:Z
    #v16=(Null);
    const/16 v26, 0x0

    .line 1428
    .local v26, readChange:Z
    #v26=(Null);
    const/4 v5, 0x1

    :try_start_5
    #v5=(One);
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1430
    .local v21, mailbox:J
    #v21=(LongLo);v22=(LongHi);
    cmp-long v5, v21, v29

    #v5=(Byte);
    if-nez v5, :cond_8

    .line 1431
    if-eqz v14, :cond_7

    .line 1432
    const/16 v5, 0x16

    #v5=(PosByte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1433
    const/4 v14, 0x0

    .line 1436
    :cond_7
    #v0=(Conflicted);v5=(Byte);
    const/16 v5, 0x9

    #v5=(PosByte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0xd

    #v6=(PosByte);
    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1439
    const/16 v5, 0x8

    #v5=(PosByte);
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1440
    .local v17, flags:I
    #v17=(Integer);
    const-string v5, "flags"

    #v5=(Reference);
    move/from16 v0, v17

    #v0=(Integer);
    or-int/lit16 v6, v0, 0x200

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1442
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    #v0=(LongLo);
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v13, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1519
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1445
    .end local v17           #flags:I
    :cond_8
    #v5=(Byte);v6=(Reference);v17=(Conflicted);
    const/16 v5, 0x9

    :try_start_7
    #v5=(PosByte);
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v21, v5

    #v5=(Byte);
    if-eqz v5, :cond_9

    .line 1450
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    #v5=(Reference);
    new-instance v6, Lcom/android/exchange/MessageMoveRequest;

    #v6=(UninitRef);
    move-wide/from16 v0, v19

    #v0=(LongLo);
    move-wide/from16 v2, v21

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/emailsync/Request;)V

    .line 1455
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1459
    :cond_9
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const/4 v15, 0x0

    .line 1460
    .local v15, flag:I
    #v15=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    #v5=(DoubleLo);v6=(DoubleHi);
    const-wide/high16 v7, 0x4028

    #v7=(LongLo);v8=(LongHi);
    cmpl-double v5, v5, v7

    #v5=(Byte);
    if-ltz v5, :cond_a

    .line 1461
    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1462
    #v15=(Integer);
    const/4 v5, 0x6

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    #v5=(Integer);
    if-eq v15, v5, :cond_a

    .line 1463
    const/16 v16, 0x1

    .line 1467
    :cond_a
    #v16=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1468
    .local v25, read:I
    #v25=(Integer);
    const/4 v5, 0x4

    #v5=(PosByte);
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v5

    #v5=(Integer);
    move/from16 v0, v25

    #v0=(Integer);
    if-eq v0, v5, :cond_b

    .line 1469
    const/16 v26, 0x1

    .line 1472
    :cond_b
    #v26=(Boolean);
    if-nez v16, :cond_c

    if-nez v26, :cond_c

    .line 1519
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1477
    :cond_c
    if-eqz v14, :cond_d

    .line 1478
    const/16 v5, 0x16

    :try_start_9
    #v5=(PosByte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1479
    const/4 v14, 0x0

    .line 1482
    :cond_d
    #v0=(Conflicted);v5=(Integer);
    const/16 v5, 0x8

    #v5=(PosByte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0xd

    #v6=(PosByte);
    const/16 v7, 0xb

    #v7=(PosByte);
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1485
    if-eqz v26, :cond_e

    .line 1486
    const/16 v5, 0x95

    #v5=(PosShort);
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1494
    :cond_e
    #v5=(Conflicted);v6=(Conflicted);
    if-eqz v16, :cond_f

    .line 1495
    if-eqz v15, :cond_10

    .line 1497
    const/16 v5, 0xba

    #v5=(PosShort);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0xbb

    #v6=(PosShort);
    const-string v7, "2"

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1499
    const/16 v5, 0xbd

    #v5=(PosShort);
    const-string v6, "FollowUp"

    #v6=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 1501
    .local v23, now:J
    #v23=(LongLo);v24=(LongHi);
    const-string v5, "GMT"

    #v5=(Reference);
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1503
    .local v11, calendar:Ljava/util/Calendar;
    #v11=(Reference);
    move-wide/from16 v0, v23

    #v0=(LongLo);
    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1506
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 1507
    .local v31, utc:Ljava/lang/String;
    #v31=(Reference);
    const/16 v5, 0x25e

    #v5=(PosShort);
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    #v1=(Reference);
    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0x25f

    #v6=(PosShort);
    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1509
    const-wide/32 v5, 0x240c8400

    #v5=(LongLo);v6=(LongHi);
    add-long v5, v5, v23

    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1510
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 1511
    const/16 v5, 0x24c

    #v5=(PosShort);
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0x24d

    #v6=(PosShort);
    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1512
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1517
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v23           #now:J
    .end local v31           #utc:Ljava/lang/String;
    :cond_f
    :goto_3
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v11=(Conflicted);v23=(Conflicted);v24=(Conflicted);v31=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1519
    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1514
    :cond_10
    #v1=(LongHi);v5=(Conflicted);
    const/16 v5, 0xba

    :try_start_b
    #v5=(PosShort);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 1519
    .end local v15           #flag:I
    .end local v16           #flagChange:Z
    .end local v21           #mailbox:J
    .end local v25           #read:I
    .end local v26           #readChange:Z
    .end local v28           #serverId:Ljava/lang/String;
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v15=(Conflicted);v16=(Conflicted);v21=(Conflicted);v22=(Conflicted);v25=(Conflicted);v26=(Conflicted);v28=(Conflicted);
    move-exception v5

    :try_start_c
    #v5=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1523
    .end local v12           #currentCursor:Landroid/database/Cursor;
    .end local v19           #id:J
    :cond_11
    #v5=(Boolean);v12=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1526
    if-nez v14, :cond_12

    .line 1527
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1529
    :cond_12
    const/4 v5, 0x0

    #v5=(Null);
    goto/16 :goto_0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;Z)V
    .locals 10
    .parameter "protocolVersion"
    .parameter "s"
    .parameter "initialSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-eqz p3, :cond_0

    .line 254
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 193
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "flagLoaded=2 AND mailboxKey=?"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v8=(Reference);
    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    .local v6, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    #v2=(Conflicted);v3=(Conflicted);v6=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    #v0=(Reference);
    new-instance v1, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-direct {v1, v2, v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;-><init>(JLjava/lang/String;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 207
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    #v0=(Boolean);v1=(Reference);v4=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v0=(Integer);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    .line 221
    .local v7, isTrashMailbox:Z
    :goto_2
    #v7=(Boolean);
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    const-wide/high16 v2, 0x4028

    #v2=(LongLo);v3=(LongHi);
    cmpg-double v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_4

    .line 222
    if-nez v7, :cond_2

    .line 223
    const/16 v0, 0x1e

    #v0=(PosByte);
    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 228
    :cond_2
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);
    const/16 v0, 0x13

    #v0=(PosByte);
    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 229
    const/16 v0, 0x15

    const-string v1, "5"

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 230
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 232
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 234
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    #v0=(Byte);
    if-ltz v0, :cond_6

    .line 235
    const/16 v0, 0x445

    #v0=(PosShort);
    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 237
    const/16 v0, 0x446

    const-string v1, "2"

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 238
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 239
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 245
    :goto_4
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 220
    .end local v7           #isTrashMailbox:Z
    :cond_3
    #v0=(Integer);v1=(PosByte);v2=(Conflicted);v3=(Conflicted);v7=(Uninit);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_2

    .line 226
    .restart local v7       #isTrashMailbox:Z
    :cond_4
    #v0=(Byte);v1=(DoubleHi);v2=(LongLo);v3=(LongHi);v7=(Boolean);
    const/16 v1, 0x1e

    #v1=(PosByte);
    if-eqz v7, :cond_5

    const-string v0, "0"

    :goto_5
    #v0=(Reference);
    invoke-virtual {p2, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3

    :cond_5
    #v0=(Byte);
    const-string v0, "1"

    #v0=(Reference);
    goto :goto_5

    .line 242
    :cond_6
    #v0=(Byte);v1=(DoubleHi);
    const/16 v0, 0x22

    #v0=(PosByte);
    const-string v1, "2"

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 243
    const/16 v0, 0x23

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_4

    .line 247
    .end local v7           #isTrashMailbox:Z
    :cond_7
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);v7=(Uninit);
    const/16 v0, 0x17

    #v0=(PosByte);
    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 250
    const/16 v0, 0x22

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 251
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 252
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0
.end method
