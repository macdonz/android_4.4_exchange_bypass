.class public Lcom/android/emailcommon/provider/Mailbox;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Mailbox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_DROP_TARGETS:[Ljava/lang/Integer;

.field private static final MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

.field public static MESSAGE_COUNT_URI:Landroid/net/Uri;

.field public static final REQUIRED_FOLDER_TYPES:[I

.field private static final SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;


# instance fields
.field public mAccountKey:J

.field public mDelimiter:I

.field public mDisplayName:Ljava/lang/String;

.field public mFlagVisible:Z

.field public mFlags:I

.field public mHierarchicalName:Ljava/lang/String;

.field public mLastFullSyncTime:J

.field public mLastTouchedTime:J

.field public mParentKey:J

.field public mParentServerId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncStatus:Ljava/lang/String;

.field public mSyncTime:J

.field public mTotalCount:I

.field public mType:I

.field public mUiLastSyncResult:I

.field public mUiSyncStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x5

    #v5=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    .line 206
    #v3=(One);
    const/16 v0, 0x15

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "serverId"

    aput-object v1, v0, v7

    const-string v1, "parentServerId"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    #v1=(PosByte);
    const-string v2, "accountKey"

    #v2=(Reference);
    aput-object v2, v0, v1

    const-string v1, "type"

    #v1=(Reference);
    aput-object v1, v0, v5

    const/4 v1, 0x6

    #v1=(PosByte);
    const-string v2, "delimiter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lastTouchedTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "uiSyncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "uiLastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hierarchicalName"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lastFullSyncTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 221
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "type"

    #v1=(Reference);
    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    .line 226
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    .line 234
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

    .line 270
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    .line 347
    new-instance v0, Landroid/util/SparseBooleanArray;

    #v0=(UninitRef);
    const/4 v1, 0x7

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    .line 348
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 349
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 353
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 354
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 355
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 356
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 372
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    .line 870
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 372
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 170
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 413
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 845
    #v1=(One);
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 170
    #p0=(Reference);
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 846
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 868
    return-void

    .line 859
    :cond_0
    #v0=(Integer);v1=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static createSyncBundle(J)Landroid/os/Bundle;
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, bundle:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "__mailboxCount__"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    return-object v0
.end method

.method public static findMailboxOfType(Landroid/content/Context;JI)J
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 665
    #v6=(Null);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v4, v0, [Ljava/lang/String;

    #v4=(Reference);
    int-to-long v0, p3

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    aput-object v0, v4, v6

    const/4 v0, 0x1

    #v0=(One);
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    aput-object v1, v4, v0

    .line 666
    .local v4, bindArguments:[Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "type=? and accountKey=?"

    #v3=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    move-object v0, p0

    #v0=(Reference);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method private static formatMailboxIdExtra(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 89
    const-string v0, "__mailboxId%d__"

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountIdForMailbox(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 935
    #v3=(Null);
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    move-object v0, p0

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public static getDisplayName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 710
    #v3=(Null);
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 711
    .local v1, url:Landroid/net/Uri;
    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    move-object v0, p0

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 540
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 541
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 544
    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    #v0=(Reference);
    return-object v0
.end method

.method public static getMailboxIdsFromBundle(Landroid/os/Bundle;)[J
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v6, 0x0

    .line 118
    #v6=(Null);
    const-string v3, "__mailboxCount__"

    #v3=(Reference);
    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, count:I
    #v0=(Integer);
    if-lez v0, :cond_2

    .line 120
    const-string v3, "__push_only__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 121
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "Mailboxes specified in a push only sync"

    #v4=(Reference);
    new-array v5, v6, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    const-string v3, "__account_only__"

    #v3=(Reference);
    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 124
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "Mailboxes specified in an account only sync"

    #v4=(Reference);
    new-array v5, v6, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    new-array v2, v0, [J

    .line 127
    .local v2, result:[J
    #v2=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    if-ge v1, v0, :cond_3

    .line 128
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    aput-wide v3, v2, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1           #i:I
    .end local v2           #result:[J
    :cond_2
    #v1=(Uninit);v2=(Uninit);v3=(Reference);v4=(Uninit);v5=(Uninit);
    const/4 v2, 0x0

    :cond_3
    #v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v2
.end method

.method public static getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mailboxType"

    .prologue
    .line 417
    const/4 v0, -0x1

    .line 418
    .local v0, resId:I
    #v0=(Byte);
    packed-switch p1, :pswitch_data_0

    .line 444
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "Illegal mailbox type"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 420
    :pswitch_1
    #v1=(Uninit);v2=(Uninit);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_inbox:I

    .line 446
    :goto_0
    #v0=(Integer);
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1

    .line 423
    :pswitch_2
    #v0=(Byte);v1=(Uninit);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_outbox:I

    .line 424
    #v0=(Integer);
    goto :goto_0

    .line 426
    :pswitch_3
    #v0=(Byte);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_drafts:I

    .line 427
    #v0=(Integer);
    goto :goto_0

    .line 429
    :pswitch_4
    #v0=(Byte);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_trash:I

    .line 430
    #v0=(Integer);
    goto :goto_0

    .line 432
    :pswitch_5
    #v0=(Byte);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_sent:I

    .line 433
    #v0=(Integer);
    goto :goto_0

    .line 435
    :pswitch_6
    #v0=(Byte);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_junk:I

    .line 436
    #v0=(Integer);
    goto :goto_0

    .line 438
    :pswitch_7
    #v0=(Byte);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_starred:I

    .line 439
    #v0=(Integer);
    goto :goto_0

    .line 441
    :pswitch_8
    #v0=(Byte);
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_all_unread:I

    .line 442
    #v0=(Integer);
    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static initMailbox()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailboxCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public static isSyncableType(I)Z
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 553
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    #v0=(Integer);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 471
    packed-switch p3, :pswitch_data_0

    .line 487
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Bad mailbox type for newSystemMailbox: "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 473
    :pswitch_1
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const/16 v1, 0x18

    .line 474
    .local v1, flags:I
    #v1=(PosByte);
    const/4 v2, 0x0

    .line 491
    .local v2, syncInterval:I
    :goto_0
    #v2=(Byte);
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 492
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    #v0=(Reference);
    iput-wide p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 493
    iput p3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 494
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 495
    const/4 v3, 0x1

    #v3=(One);
    iput-boolean v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 497
    invoke-static {p0, p3}, Lcom/android/emailcommon/provider/Mailbox;->getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 498
    const-wide/16 v3, -0x1

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 499
    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 500
    return-object v0

    .line 478
    .end local v0           #box:Lcom/android/emailcommon/provider/Mailbox;
    .end local v1           #flags:I
    .end local v2           #syncInterval:I
    :pswitch_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const/16 v1, 0x8

    .line 479
    .restart local v1       #flags:I
    #v1=(PosByte);
    const/4 v2, 0x0

    .line 480
    .restart local v2       #syncInterval:I
    #v2=(Null);
    goto :goto_0

    .line 483
    .end local v1           #flags:I
    .end local v2           #syncInterval:I
    :pswitch_3
    #v1=(Uninit);v2=(Uninit);
    const/16 v1, 0x8

    .line 484
    .restart local v1       #flags:I
    #v1=(PosByte);
    const/4 v2, -0x1

    .line 485
    .restart local v2       #syncInterval:I
    #v2=(Byte);
    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 512
    #v6=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "serverId=? and accountKey=?"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    aput-object p3, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 518
    if-nez v1, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 521
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 522
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/Mailbox;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 524
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Multiple mailboxes named \"%s\""

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_1
    :goto_0
    #v2=(Conflicted);
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 527
    :cond_2
    :try_start_1
    #v0=(Boolean);v2=(Reference);
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v2, "Could not find mailbox at \"%s\""

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    #v0=(Null);
    goto :goto_0

    .line 531
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 675
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 676
    .local v0, mailboxId:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-eqz v2, :cond_0

    .line 677
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 679
    :goto_0
    #v2=(Reference);
    return-object v2

    :cond_0
    #v2=(Byte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public static restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 456
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    move-object v0, p0

    #v0=(Reference);
    move-wide v4, p1

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getHashes()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 767
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    new-array v0, v1, [Ljava/lang/Object;

    .line 769
    .local v0, hash:[Ljava/lang/Object;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 771
    const/4 v1, 0x1

    #v1=(One);
    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 773
    const/4 v1, 0x2

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 775
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 777
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 779
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 781
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 783
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 785
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 787
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 789
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 791
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 793
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 795
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 797
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 799
    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 801
    const/16 v1, 0x10

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 803
    const/16 v1, 0x11

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 805
    const/16 v1, 0x12

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 807
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 809
    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x1

    .line 576
    #v0=(One);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 577
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 578
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 579
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 580
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 581
    const/16 v2, 0xe

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);
    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 582
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);
    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 583
    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 584
    const/4 v2, 0x6

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 585
    const/4 v2, 0x7

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 586
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 587
    const/16 v2, 0x9

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 588
    const/16 v2, 0xa

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);
    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 589
    const/16 v2, 0xb

    #v2=(PosByte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    if-ne v2, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 590
    const/16 v0, 0xc

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 591
    const/16 v0, 0xd

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 592
    const/16 v0, 0xf

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 593
    const/16 v0, 0x10

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    .line 594
    const/16 v0, 0x11

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    .line 595
    const/16 v0, 0x12

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 596
    const/16 v0, 0x13

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 597
    const/16 v0, 0x14

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 598
    return-void

    :cond_0
    #v0=(One);v1=(Null);
    move v0, v1

    .line 589
    #v0=(Null);
    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 602
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 603
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "displayName"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "parentServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v1, "parentKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 607
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string v1, "type"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v1, "delimiter"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v1, "syncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 614
    const-string v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 615
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v1, "syncStatus"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v1, "lastTouchedTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 618
    const-string v1, "uiSyncStatus"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v1, "uiLastSyncResult"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v1, "totalCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v1, "hierarchicalName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v1, "lastFullSyncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "[Mailbox "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastFullSyncTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "c"
    .parameter "syncTime"

    .prologue
    .line 646
    iget-wide v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, p2, v1

    #v1=(Byte);
    if-eqz v1, :cond_0

    .line 647
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "lastFullSyncTime"

    #v1=(Reference);
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 649
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 650
    iput-wide p2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 652
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public updateMessageCount(Landroid/content/Context;I)V
    .locals 3
    .parameter "c"
    .parameter "count"

    .prologue
    .line 632
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    #v1=(Integer);
    if-eq p2, v1, :cond_0

    .line 633
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 634
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "totalCount"

    #v1=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 636
    iput p2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 638
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 822
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 823
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 826
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    #v0=(LongLo);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 827
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 828
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 831
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    #v0=(LongLo);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 834
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    #v0=(LongLo);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 838
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    #v0=(LongLo);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 843
    return-void

    .line 834
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
