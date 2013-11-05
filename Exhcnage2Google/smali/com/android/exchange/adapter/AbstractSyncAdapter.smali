.class public abstract Lcom/android/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    }
.end annotation


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public final mAccountManagerAccount:Landroid/accounts/Account;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field public mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 85
    iget-object v0, p1, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 86
    iget-object v0, p1, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p1, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 88
    new-instance v0, Landroid/accounts/Account;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.google.android.exchange"

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 90
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    return-void
.end method

.method static operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "op"
    .parameter "offset"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 207
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-object v1

    .line 200
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "Operation must have CPO.Builder"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 203
    :cond_1
    #v2=(Uninit);
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 204
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    #v2=(Integer);
    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 207
    :cond_2
    #v2=(Conflicted);
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "Reset SyncKey to 0"

    #v2=(Reference);
    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string v1, "0"

    #v1=(Reference);
    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 107
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 95
    return-void
.end method
