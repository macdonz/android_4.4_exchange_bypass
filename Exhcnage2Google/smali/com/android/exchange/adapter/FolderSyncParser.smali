.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderSyncParser$1;,
        Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    }
.end annotation


# static fields
.field private static final FIXUP_CHILD_PROJECTION:[Ljava/lang/String;

.field private static final FIXUP_PARENT_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

.field private static final NO_MAILBOX_STRING:Ljava/lang/String;

.field private static final UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;


# instance fields
.field mAccountId:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAccountIdAsString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBindArguments:[Ljava/lang/String;

.field private final mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

.field private mInitialSync:Z

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentFixupsNeeded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusOnly:Z

.field private mSyncKeyChanged:Z

.field final mSyncOptionsMap:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    #v3=(PosByte);
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    .line 75
    #v4=(One);
    new-instance v0, Landroid/util/SparseIntArray;

    #v0=(UninitRef);
    const/16 v1, 0xb

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    .line 76
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v5

    const-string v1, "serverId"

    aput-object v1, v0, v4

    const-string v1, "parentServerId"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 128
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->FIXUP_PARENT_PROJECTION:[Ljava/lang/String;

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->FIXUP_CHILD_PROJECTION:[Ljava/lang/String;

    .line 143
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->NO_MAILBOX_STRING:Ljava/lang/String;

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    .line 173
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string v1, "parentKey"

    #v1=(Reference);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "serverId"

    aput-object v1, v0, v5

    const-string v1, "syncInterval"

    aput-object v1, v0, v4

    const-string v1, "syncLookback"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 6
    .parameter "context"
    .parameter "resolver"
    .parameter "in"
    .parameter "account"
    .parameter "statusOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v4, 0x0

    #v4=(Null);
    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move-object v5, p4

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 150
    #v0=(Reference);p0=(Reference);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    .line 160
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    #v0=(UninitRef);
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    array-length v1, v1

    #v1=(Integer);
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 180
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 181
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 182
    iput-boolean p5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 187
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V
    .locals 2
    .parameter "in"
    .parameter "adapter"
    .parameter "statusOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 150
    #p0=(Reference);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    .line 160
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    #v0=(UninitRef);
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 192
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 193
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 194
    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 195
    return-void
.end method

.method private addMailboxOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "name"
    .parameter "serverId"
    .parameter "parentServerId"
    .parameter "mailboxType"
    .parameter "fromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/16 v4, 0xa

    #v4=(PosByte);
    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 396
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v4, "displayName"

    #v4=(Reference);
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-eqz p5, :cond_4

    .line 398
    const-string v4, "serverId"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v4, "0"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 401
    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->NO_MAILBOX_STRING:Ljava/lang/String;

    .line 402
    .local v2, parentId:Ljava/lang/String;
    #v2=(Reference);
    const-string v4, "parentKey"

    #v4=(Reference);
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    :goto_0
    #v5=(Conflicted);v6=(Conflicted);
    const-string v4, "parentServerId"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v2           #parentId:Ljava/lang/String;
    :goto_1
    #v2=(Conflicted);
    const-string v4, "accountKey"

    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    const-string v4, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    if-eqz p5, :cond_5

    invoke-static {p4}, Lcom/android/emailcommon/provider/Mailbox;->getDefaultSyncStateForType(I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    const/4 v3, 0x1

    .line 418
    .local v3, shouldSync:Z
    :goto_2
    #v3=(Boolean);v4=(Conflicted);
    const-string v5, "syncInterval"

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_3
    #v4=(Boolean);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, flags:I
    #v1=(Null);
    const/16 v4, 0x40

    #v4=(PosByte);
    if-gt p4, v4, :cond_0

    .line 423
    or-int/lit8 v1, v1, 0x48

    .line 426
    :cond_0
    #v1=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    if-eq p4, v4, :cond_1

    const/4 v4, 0x6

    #v4=(PosByte);
    if-eq p4, v4, :cond_1

    const/4 v4, 0x7

    if-eq p4, v4, :cond_1

    if-nez p4, :cond_2

    .line 428
    :cond_1
    or-int/lit8 v1, v1, 0x10

    .line 430
    :cond_2
    const-string v4, "flags"

    #v4=(Reference);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v5, "flagVisible"

    const/16 v4, 0x40

    #v4=(PosByte);
    if-ge p4, v4, :cond_7

    const/4 v4, 0x1

    :goto_4
    #v4=(Boolean);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {v4, p4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 439
    return-void

    .line 404
    .end local v1           #flags:I
    .end local v3           #shouldSync:Z
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    move-object v2, p3

    .line 405
    .restart local v2       #parentId:Ljava/lang/String;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    #v4=(Reference);
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    .end local v2           #parentId:Ljava/lang/String;
    :cond_4
    #v2=(Uninit);
    const-string v4, "serverId"

    const-string v5, ""

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v4, "parentKey"

    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v4, "parentServerId"

    sget-object v5, Lcom/android/exchange/adapter/FolderSyncParser;->NO_MAILBOX_STRING:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v4, "totalCount"

    const/4 v5, -0x1

    #v5=(Byte);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 417
    :cond_5
    #v2=(Conflicted);v4=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_2

    .line 418
    .restart local v3       #shouldSync:Z
    :cond_6
    #v3=(Boolean);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_3

    .line 433
    .restart local v1       #flags:I
    :cond_7
    #v1=(Integer);v4=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_4
.end method

.method private addParser()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 447
    #v7=(Byte);
    const/4 v1, 0x0

    .line 448
    .local v1, name:Ljava/lang/String;
    #v1=(Null);
    const/4 v2, 0x0

    .line 449
    .local v2, serverId:Ljava/lang/String;
    #v2=(Null);
    const/4 v3, 0x0

    .line 450
    .local v3, parentId:Ljava/lang/String;
    #v3=(Null);
    const/4 v6, 0x0

    .line 452
    .local v6, type:I
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Reference);v3=(Reference);v5=(Conflicted);v6=(Integer);
    const/16 v0, 0x1cf

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v5, 0x3

    #v5=(PosByte);
    if-eq v0, v5, :cond_0

    .line 453
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 471
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 455
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 456
    goto :goto_0

    .line 459
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v6

    .line 460
    goto :goto_0

    .line 463
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 464
    goto :goto_0

    .line 467
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 468
    goto :goto_0

    .line 474
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 475
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    #v0=(Reference);
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 476
    .local v4, mailboxType:I
    #v4=(Integer);
    if-eq v4, v7, :cond_2

    .line 477
    const/16 v0, 0x8

    #v0=(PosByte);
    if-ne v6, v0, :cond_1

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 480
    :cond_1
    #v0=(Conflicted);
    const/4 v5, 0x1

    #v5=(One);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/FolderSyncParser;->addMailboxOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 483
    .end local v4           #mailboxType:I
    :cond_2
    #v0=(Conflicted);v4=(Conflicted);v5=(PosByte);
    return-void

    .line 453
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private changesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    :goto_0
    const/16 v0, 0x1ce

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_4

    .line 552
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cf

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser()V

    goto :goto_0

    .line 554
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d0

    if-ne v0, v1, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser()V

    goto :goto_0

    .line 556
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d1

    if-ne v0, v1, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser()V

    goto :goto_0

    .line 558
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d7

    if-ne v0, v1, :cond_3

    .line 560
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_0

    .line 562
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 564
    :cond_4
    #v1=(PosByte);
    return-void
.end method

.method private deleteParser()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    :goto_0
    const/16 v5, 0x1d0

    #v5=(PosShort);
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x3

    #v6=(PosByte);
    if-eq v5, v6, :cond_1

    .line 285
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 310
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 287
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, serverId:Ljava/lang/String;
    #v4=(Reference);
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 291
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    #v0=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 292
    const-string v5, "FolderSyncParser"

    #v5=(Reference);
    const-string v6, "Deleting %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 294
    .local v1, mailboxId:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v5=(Reference);
    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v5, v6, v7, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 299
    const/4 v5, 0x2

    #v5=(PosByte);
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, parentId:Ljava/lang/String;
    #v3=(Reference);
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    #v5=(Reference);
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v1           #mailboxId:J
    .end local v3           #parentId:Ljava/lang/String;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    #v5=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 313
    .end local v0           #c:Landroid/database/Cursor;
    .end local v4           #serverId:Ljava/lang/String;
    :cond_1
    #v0=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(PosByte);
    return-void

    .line 285
    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method private doParentFixups()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 692
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    return-void

    .line 626
    :cond_1
    #v0=(Reference);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v6, v2, [Ljava/lang/String;

    .line 627
    .local v6, bindArguments:[Ljava/lang/String;
    #v6=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    #v3=(Reference);
    aput-object v3, v6, v2

    .line 628
    new-instance v11, Landroid/content/ContentValues;

    #v11=(UninitRef);
    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 630
    .local v11, cv:Landroid/content/ContentValues;
    #v11=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Reference);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    #v19=(Reference);
    check-cast v19, Ljava/lang/String;

    .line 632
    .local v19, parentServerId:Ljava/lang/String;
    const/4 v2, 0x0

    #v2=(Null);
    aput-object v19, v6, v2

    .line 633
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/exchange/adapter/FolderSyncParser;->FIXUP_PARENT_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "serverId=? and accountKey=?"

    #v5=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 635
    .local v15, parentCursor:Landroid/database/Cursor;
    #v15=(Reference);
    if-eqz v15, :cond_2

    .line 642
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 643
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 644
    .local v17, parentId:J
    #v17=(LongLo);v18=(LongHi);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 650
    .local v16, parentFlags:I
    #v16=(Integer);
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/exchange/adapter/FolderSyncParser;->FIXUP_CHILD_PROJECTION:[Ljava/lang/String;

    const-string v5, "parentServerId=? and accountKey=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 657
    .local v8, childCursor:Landroid/database/Cursor;
    #v8=(Reference);
    const/4 v12, 0x0

    .line 658
    .local v12, hasChildren:Z
    #v12=(Null);
    if-eqz v8, :cond_4

    .line 661
    :try_start_1
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 663
    const-string v2, "parentKey"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    :goto_1
    #v12=(Boolean);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 665
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 666
    .local v9, childId:J
    #v9=(LongLo);v10=(LongHi);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 669
    const/4 v12, 0x1

    .line 670
    #v12=(One);
    goto :goto_1

    .line 650
    .end local v8           #childCursor:Landroid/database/Cursor;
    .end local v9           #childId:J
    .end local v12           #hasChildren:Z
    .end local v16           #parentFlags:I
    .end local v17           #parentId:J
    :catchall_0
    #v2=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 672
    .restart local v8       #childCursor:Landroid/database/Cursor;
    .restart local v12       #hasChildren:Z
    .restart local v16       #parentFlags:I
    .restart local v17       #parentId:J
    :catchall_1
    #v8=(Reference);v12=(Boolean);v16=(Integer);v17=(LongLo);v18=(LongHi);
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    #v2=(Boolean);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_4
    #v2=(Conflicted);
    if-eqz v12, :cond_6

    .line 680
    or-int/lit8 v14, v16, 0x3

    .line 684
    .local v14, newFlags:I
    :goto_2
    #v14=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    if-eq v14, v0, :cond_5

    .line 685
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 686
    const-string v2, "flags"

    #v2=(Reference);
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/FolderSyncParser;->flushOperations()V

    goto/16 :goto_0

    .line 682
    .end local v14           #newFlags:I
    :cond_6
    #v0=(Reference);v14=(Conflicted);
    and-int/lit8 v14, v16, -0x4

    .restart local v14       #newFlags:I
    #v14=(Integer);
    goto :goto_2

    .line 650
    .end local v8           #childCursor:Landroid/database/Cursor;
    .end local v12           #hasChildren:Z
    .end local v14           #newFlags:I
    .end local v16           #parentFlags:I
    .end local v17           #parentId:J
    :cond_7
    #v2=(Boolean);v8=(Conflicted);v12=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private flushOperations()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 571
    #v7=(Null);
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 606
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 574
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 575
    .local v2, transactionSize:I
    #v2=(Integer);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .local v1, subOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 578
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 583
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 584
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 585
    :catch_0
    #v4=(Conflicted);
    move-exception v0

    .line 587
    .local v0, e:Landroid/os/TransactionTooLargeException;
    #v0=(Reference);
    if-ne v2, v8, :cond_2

    .line 588
    const-string v3, "FolderSyncParser"

    const-string v4, "Single operation transaction too large"

    #v4=(Reference);
    new-array v5, v7, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 589
    new-instance v3, Ljava/io/IOException;

    #v3=(UninitRef);
    const-string v4, "Single operation transaction too large"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 591
    :cond_2
    #v4=(Conflicted);v5=(Conflicted);
    const-string v3, "FolderSyncParser"

    const-string v4, "Transaction operation count %d too large, halving..."

    #v4=(Reference);
    new-array v5, v8, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 593
    div-int/lit8 v2, v2, 0x2

    .line 594
    if-ge v2, v8, :cond_1

    .line 595
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_1

    .line 597
    .end local v0           #e:Landroid/os/TransactionTooLargeException;
    :catch_1
    #v0=(Conflicted);v2=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    #v0=(Reference);
    const-string v3, "FolderSyncParser"

    const-string v4, "RemoteException in commit"

    #v4=(Reference);
    new-array v5, v7, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 599
    new-instance v3, Ljava/io/IOException;

    #v3=(UninitRef);
    const-string v4, "RemoteException in commit"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 600
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    .line 601
    .local v0, e:Landroid/content/OperationApplicationException;
    #v0=(Reference);
    const-string v3, "FolderSyncParser"

    const-string v4, "OperationApplicationException in commit"

    #v4=(Reference);
    new-array v5, v7, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 602
    new-instance v3, Ljava/io/IOException;

    #v3=(UninitRef);
    const-string v4, "OperationApplicationException in commit"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 605
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :cond_3
    #v0=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    aput-object p1, v0, v1

    .line 273
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    #v1=(One);
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private updateParser()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v5, 0x0

    .line 492
    .local v5, serverId:Ljava/lang/String;
    #v5=(Null);
    const/4 v2, 0x0

    .line 493
    .local v2, displayName:Ljava/lang/String;
    #v2=(Null);
    const/4 v4, 0x0

    .line 494
    .local v4, parentId:Ljava/lang/String;
    :goto_0
    #v2=(Reference);v4=(Reference);v5=(Reference);v6=(Conflicted);v7=(Conflicted);
    const/16 v6, 0x1d1

    #v6=(PosShort);
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v6

    #v6=(Integer);
    const/4 v7, 0x3

    #v7=(PosByte);
    if-eq v6, v7, :cond_0

    .line 495
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_0

    .line 506
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 498
    goto :goto_0

    .line 500
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 501
    goto :goto_0

    .line 503
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 504
    goto :goto_0

    .line 512
    :cond_0
    if-eqz v5, :cond_5

    if-nez v2, :cond_1

    if-eqz v4, :cond_5

    .line 513
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 516
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    #v0=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    .line 517
    const-string v6, "FolderSyncParser"

    #v6=(Reference);
    const-string v7, "Updating %s"

    #v7=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v1, cv:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_6

    .line 523
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    #v6=(Reference);
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_1
    #v8=(Conflicted);
    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, oldParentId:Ljava/lang/String;
    #v3=(Reference);
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_2

    .line 529
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    #v6=(Reference);
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_2
    #v6=(Conflicted);
    if-eqz v2, :cond_3

    .line 533
    const-string v6, "displayName"

    #v6=(Reference);
    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_3
    #v6=(Conflicted);
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    #v6=(Reference);
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    #v8=(Null);
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #oldParentId:Ljava/lang/String;
    :cond_4
    #v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    #v0=(Conflicted);
    return-void

    .line 525
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    #v0=(Reference);v1=(Reference);v3=(Uninit);v6=(Boolean);v7=(Reference);v8=(Reference);v9=(Null);
    const-string v6, "parentKey"

    #v6=(Reference);
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 540
    .end local v1           #cv:Landroid/content/ContentValues;
    :catchall_0
    #v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v6

    #v6=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 495
    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    return-void
.end method

.method public commit()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 702
    new-instance v15, Landroid/content/ContentValues;

    #v15=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 703
    .local v15, cv:Landroid/content/ContentValues;
    #v15=(Reference);
    const-string v2, "syncKey"

    #v2=(Reference);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v15           #cv:Landroid/content/ContentValues;
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 710
    sget-object v13, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    .local v13, arr$:[I
    #v13=(Reference);
    array-length v0, v13

    #v0=(Integer);
    move/from16 v19, v0

    .local v19, len$:I
    #v19=(Integer);
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(Integer);
    if-ge v0, v1, :cond_2

    aget v6, v13, v16

    .line 711
    .local v6, requiredType:I
    #v6=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    #v2=(Reference);
    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    #v2=(Reference);
    invoke-static {v2, v6}, Lcom/android/emailcommon/provider/Mailbox;->getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/adapter/FolderSyncParser;->addMailboxOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 710
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 719
    .end local v6           #requiredType:I
    .end local v13           #arr$:[I
    .end local v16           #i$:I
    .end local v19           #len$:I
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v13=(Conflicted);v16=(Conflicted);v19=(Conflicted);
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/FolderSyncParser;->flushOperations()V

    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/FolderSyncParser;->doParentFixups()V

    .line 726
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "Sync Issues"

    #v4=(Reference);
    aput-object v4, v2, v3

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 728
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v7=(Reference);
    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v8=(Reference);
    sget-object v9, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    #v9=(Reference);
    const-string v10, "displayName=? and accountKey=?"

    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v11=(Reference);
    const/4 v12, 0x0

    #v12=(Null);
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 731
    .local v14, c:Landroid/database/Cursor;
    #v14=(Reference);
    const/16 v20, 0x0

    .line 732
    .local v20, parentServerId:Ljava/lang/String;
    #v20=(Null);
    const-wide/16 v17, 0x0

    .line 734
    .local v17, id:J
    :try_start_0
    #v17=(LongLo);v18=(LongHi);
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 735
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 736
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 739
    :cond_3
    #v2=(Boolean);v20=(Reference);
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 741
    if-eqz v20, :cond_4

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    move-wide/from16 v0, v17

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x0

    #v3=(Null);
    aput-object v20, v2, v3

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    const-string v4, "parentServerId=? and accountKey=?"

    #v4=(Reference);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 750
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/FolderSyncParser;->restoreMailboxSyncOptions()V

    .line 753
    :cond_5
    return-void

    .line 739
    :catchall_0
    #v2=(Conflicted);v3=(One);v20=(Null);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public parse()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 200
    #v6=(Null);
    const/4 v2, 0x0

    .line 201
    .local v2, res:Z
    #v2=(Null);
    const/4 v3, 0x0

    .line 202
    .local v3, resetFolders:Z
    #v3=(Null);
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "0"

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v8=(Reference);
    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    :cond_0
    #v5=(Conflicted);v8=(Conflicted);
    move v5, v7

    :goto_0
    #v5=(Boolean);
    iput-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    .line 203
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v5=(Reference);
    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v8=(Reference);
    const-string v9, "accountKey=?"

    #v9=(Reference);
    new-array v10, v7, [Ljava/lang/String;

    #v10=(Reference);
    iget-object v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    #v11=(Reference);
    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    :cond_1
    #v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    #v5=(Integer);
    const/16 v8, 0x1d6

    #v8=(PosShort);
    if-eq v5, v8, :cond_5

    .line 209
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    #v5=(Reference);
    throw v5

    :cond_2
    #v5=(Boolean);v8=(Reference);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    move v5, v6

    .line 202
    #v5=(Null);
    goto :goto_0

    .line 236
    .local v0, dupes:I
    .local v4, status:I
    :cond_3
    #v0=(Integer);v1=(Conflicted);v2=(Boolean);v3=(Boolean);v4=(Integer);v5=(Byte);v8=(LongLo);v9=(LongHi);v10=(LongLo);v11=(LongHi);
    const/16 v5, 0x9

    #v5=(PosByte);
    if-eq v4, v5, :cond_4

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_9

    .line 238
    :cond_4
    #v5=(PosByte);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->wipe()V

    .line 240
    const/4 v2, 0x1

    .line 241
    #v2=(One);
    const/4 v3, 0x1

    .line 210
    .end local v0           #dupes:I
    .end local v4           #status:I
    :cond_5
    :goto_1
    #v0=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    #v5=(Integer);
    const/4 v8, 0x3

    #v8=(PosByte);
    if-eq v5, v8, :cond_10

    .line 211
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1cc

    #v8=(PosShort);
    if-ne v5, v8, :cond_a

    .line 212
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 216
    .restart local v4       #status:I
    #v4=(Integer);
    const/4 v0, 0x0

    .line 217
    .restart local v0       #dupes:I
    #v0=(Null);
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    #v8=(LongLo);v9=(LongHi);
    const-wide/16 v10, 0x0

    #v10=(LongLo);v11=(LongHi);
    cmp-long v5, v8, v10

    #v5=(Byte);
    if-lez v5, :cond_6

    .line 218
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v5=(Reference);
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent;->ACCOUNT_CHECK_URI:Landroid/net/Uri;

    #v8=(Reference);
    iget-wide v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    #v9=(LongLo);v10=(LongHi);
    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    #v9=(Reference);
    invoke-virtual {v5, v8, v9, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 222
    :cond_6
    #v0=(Integer);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-lez v0, :cond_7

    .line 223
    const-string v5, "FolderSyncParser"

    #v5=(Reference);
    const-string v8, "Duplicate mailboxes found for account %d: %d"

    #v8=(Reference);
    const/4 v9, 0x2

    #v9=(PosByte);
    new-array v9, v9, [Ljava/lang/Object;

    #v9=(Reference);
    iget-wide v10, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    #v10=(LongLo);
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    #v10=(Reference);
    aput-object v10, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v5, v8, v9}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    const/16 v4, 0x9

    .line 227
    :cond_7
    #v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-eq v4, v7, :cond_5

    .line 230
    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_8

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    const-wide/16 v10, -0x1

    #v10=(LongLo);
    cmp-long v5, v8, v10

    #v5=(Byte);
    if-nez v5, :cond_3

    .line 233
    :cond_8
    #v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    new-instance v5, Lcom/android/exchange/CommandStatusException;

    #v5=(UninitRef);
    invoke-direct {v5, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    #v5=(Reference);
    throw v5

    .line 245
    :cond_9
    #v5=(Boolean);v8=(LongLo);v9=(LongHi);v10=(LongLo);
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    #v5=(UninitRef);
    const-string v6, "Folder status error"

    #v6=(Reference);
    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    #v5=(Reference);
    throw v5

    .line 248
    .end local v0           #dupes:I
    .end local v4           #status:I
    :cond_a
    #v0=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Null);v8=(PosShort);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1d2

    if-ne v5, v8, :cond_c

    .line 249
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, newKey:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    .line 251
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_b

    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    .line 252
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    iput-object v1, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    #v5=(Boolean);
    move v5, v6

    .line 251
    #v5=(Null);
    goto :goto_2

    .line 254
    .end local v1           #newKey:Ljava/lang/String;
    :cond_c
    #v1=(Conflicted);v5=(Integer);
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1ce

    if-ne v5, v8, :cond_f

    .line 255
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    #v5=(Boolean);
    if-eqz v5, :cond_e

    .line 263
    :cond_d
    :goto_3
    return v2

    .line 256
    :cond_e
    invoke-direct {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser()V

    goto/16 :goto_1

    .line 258
    :cond_f
    #v5=(Integer);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_1

    .line 260
    :cond_10
    #v8=(PosByte);
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    #v5=(Boolean);
    if-nez v5, :cond_d

    .line 261
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->commit()V

    goto :goto_3
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    return-void
.end method

.method restoreMailboxSyncOptions()V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 367
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    #v6=(Reference);
    aput-object v6, v4, v5

    .line 369
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/String;

    .line 370
    .local v3, serverId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    .line 371
    .local v2, options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    const-string v4, "syncInterval"

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v4, "syncLookback"

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    #v5=(Null);
    aput-object v3, v4, v5

    .line 375
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    const-string v6, "serverId=? and accountKey=?"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    .end local v3           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v4

    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v1=(Reference);v4=(Boolean);v5=(Conflicted);v6=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 381
    return-void
.end method

.method saveMailboxSyncOptions()V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v8, 0x0

    .line 345
    #v8=(Null);
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 346
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

    #v3=(Reference);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    #v7=(Reference);
    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 350
    :goto_0
    :try_start_0
    #v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    #v2=(UninitRef);
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    #v4=(Integer);
    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(IILcom/android/exchange/adapter/FolderSyncParser$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    #v0=(Boolean);v2=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_1
    #v0=(Conflicted);
    return-void
.end method

.method protected wipe()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 761
    #v7=(Null);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exchange/service/EasContactsSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->saveMailboxSyncOptions()V

    .line 769
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=?"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v2, "0"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 773
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 777
    return-void
.end method
