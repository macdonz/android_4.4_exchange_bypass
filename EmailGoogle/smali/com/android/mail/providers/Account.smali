.class public Lcom/android/mail/providers/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Lcom/android/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/content/CursorCreator",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public accountFromAddresses:Ljava/lang/String;

.field private final accountManagerName:Ljava/lang/String;

.field public final accoutCookieQueryUri:Landroid/net/Uri;

.field public allFolderListUri:Landroid/net/Uri;

.field private amAccount:Landroid/accounts/Account;

.field public final capabilities:I

.field public final color:I

.field public final composeIntentUri:Landroid/net/Uri;

.field public final defaultRecentFolderListUri:Landroid/net/Uri;

.field public final enableMessageTransforms:I

.field public final expungeMessageUri:Landroid/net/Uri;

.field public final folderListUri:Landroid/net/Uri;

.field public fullFolderListUri:Landroid/net/Uri;

.field public final helpIntentUri:Landroid/net/Uri;

.field private transient mReplyFroms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation
.end field

.field public final manualSyncUri:Landroid/net/Uri;

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final providerVersion:I

.field public final quickResponseUri:Landroid/net/Uri;

.field public final reauthenticationIntentUri:Landroid/net/Uri;

.field public final recentFolderListUri:Landroid/net/Uri;

.field public final searchUri:Landroid/net/Uri;

.field public final sendFeedbackIntentUri:Landroid/net/Uri;

.field public final settings:Lcom/android/mail/providers/Settings;

.field public final settingsIntentUri:Landroid/net/Uri;

.field public final syncAuthority:Ljava/lang/String;

.field public final syncStatus:I

.field private final type:Ljava/lang/String;

.field public final undoUri:Landroid/net/Uri;

.field public final updateSettingsUri:Landroid/net/Uri;

.field public final uri:Landroid/net/Uri;

.field public final viewIntentProxyUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/mail/providers/Account;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/mail/providers/Account;->$assertionsDisabled:Z

    .line 225
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    .line 747
    new-instance v0, Lcom/android/mail/providers/Account$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Account$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Account;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 811
    new-instance v0, Lcom/android/mail/providers/Account$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Account$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Account;->FACTORY:Lcom/android/mail/content/CursorCreator;

    return-void

    .line 47
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 374
    #v3=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 375
    #p0=(Reference);
    const-string v1, "name"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    .line 376
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    .line 377
    const-string v1, "accountManagerName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    .line 379
    const-string v1, "accountFromAddresses"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    .line 382
    const-string v1, "capabilities"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, capabilitiesColumnIndex:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_1

    .line 385
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/providers/Account;->capabilities:I

    .line 390
    :goto_0
    const-string v1, "providerVersion"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    .line 392
    const-string v1, "accountUri"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 393
    const-string v1, "folderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 395
    const-string v1, "fullFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    .line 397
    const-string v1, "allFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .line 399
    const-string v1, "searchUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    .line 401
    const-string v1, "expungeMessageUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    .line 403
    const-string v1, "undoUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    .line 405
    const-string v1, "accountSettingsIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    .line 407
    const-string v1, "helpIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    .line 409
    const-string v1, "sendFeedbackIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    .line 411
    const-string v1, "reauthenticationUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    .line 413
    const-string v1, "syncStatus"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    .line 414
    const-string v1, "composeUri"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    .line 416
    const-string v1, "mimeType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 417
    const-string v1, "recentFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 419
    const-string v1, "color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->color:I

    .line 420
    const-string v1, "defaultRecentFolderListUri"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 422
    const-string v1, "manualSyncUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    .line 424
    const-string v1, "viewProxyUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    .line 426
    const-string v1, "accountCookieUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    .line 428
    const-string v1, "updateSettingsUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    .line 430
    const-string v1, "enableMessageTransforms"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    .line 432
    const-string v1, "syncAuthority"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 435
    sget-object v1, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Unexpected empty syncAuthority from cursor"

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    const-string v1, "quickResponseUri"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    .line 439
    new-instance v1, Lcom/android/mail/providers/Settings;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Lcom/android/mail/providers/Settings;-><init>(Landroid/database/Cursor;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    .line 440
    return-void

    .line 387
    :cond_1
    #v1=(Byte);v2=(Uninit);v3=(Null);
    iput v3, p0, Lcom/android/mail/providers/Account;->capabilities:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .parameter "in"
    .parameter "loader"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x0

    .line 495
    #v4=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 496
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    .line 500
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/providers/Account;->capabilities:I

    .line 502
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 503
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    .line 504
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .line 505
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    .line 507
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    .line 508
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    .line 509
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    .line 510
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    .line 511
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    .line 512
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    .line 514
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 516
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/providers/Account;->color:I

    .line 518
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 519
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    .line 520
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    .line 521
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    .line 522
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 526
    sget-object v1, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Unexpected empty syncAuthority from Parcel"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    .local v0, hasSettings:I
    #v0=(Integer);
    if-nez v0, :cond_1

    .line 531
    sget-object v1, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #v2=(Reference);
    const-string v3, "Unexpected null settings in Account(Parcel)"

    #v3=(Reference);
    new-array v4, v5, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1, v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    sget-object v1, Lcom/android/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/android/mail/providers/Settings;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    .line 536
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 534
    :cond_1
    #v4=(Null);
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Settings;

    iput-object v1, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "acctName"
    .parameter "acctType"
    .parameter "jsonAccount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 310
    #v6=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    .line 313
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef);
    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, json:Lorg/json/JSONObject;
    #v1=(Reference);
    const-string v3, "accountManagerName"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, amName:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    .line 322
    :goto_0
    #v3=(Conflicted);
    const-string v3, "providerVersion"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    .line 323
    const-string v3, "accountUri"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 324
    const-string v3, "capabilities"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Account;->capabilities:I

    .line 325
    const-string v3, "folderListUri"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 327
    const-string v3, "fullFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    .line 329
    const-string v3, "allFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .line 331
    const-string v3, "searchUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    .line 332
    const-string v3, "accountFromAddresses"

    const-string v4, ""

    #v4=(Reference);
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    .line 334
    const-string v3, "expungeMessageUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    .line 336
    const-string v3, "undoUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    .line 337
    const-string v3, "accountSettingsIntentUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    .line 339
    const-string v3, "helpIntentUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    .line 340
    const-string v3, "sendFeedbackIntentUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    .line 342
    const-string v3, "reauthenticationUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    .line 344
    const-string v3, "syncStatus"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    .line 345
    const-string v3, "composeUri"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    .line 346
    const-string v3, "mimeType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 347
    const-string v3, "recentFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 349
    const-string v3, "color"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Account;->color:I

    .line 350
    const-string v3, "defaultRecentFolderListUri"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 352
    const-string v3, "manualSyncUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    .line 354
    const-string v3, "viewProxyUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    .line 356
    const-string v3, "accountCookieUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    .line 358
    const-string v3, "updateSettingsUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    .line 360
    const-string v3, "enableMessageTransforms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    .line 361
    const-string v3, "syncAuthority"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    .line 362
    const-string v3, "quickResponseUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    .line 364
    const-string v3, "settings"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/providers/Settings;->newInstance(Lorg/json/JSONObject;)Lcom/android/mail/providers/Settings;

    move-result-object v2

    .line 365
    .local v2, jsonSettings:Lcom/android/mail/providers/Settings;
    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 366
    iput-object v2, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    .line 372
    :goto_1
    #v5=(Conflicted);v6=(Reference);
    return-void

    .line 320
    .end local v2           #jsonSettings:Lcom/android/mail/providers/Settings;
    :cond_0
    #v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Null);
    iput-object v0, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    goto/16 :goto_0

    .line 368
    .restart local v2       #jsonSettings:Lcom/android/mail/providers/Settings;
    :cond_1
    #v2=(Reference);v3=(Reference);v4=(Reference);
    sget-object v3, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/Throwable;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    #v4=(Reference);
    const-string v5, "Unexpected null settings in Account(name, type, jsonAccount)"

    #v5=(Reference);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v3, v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    sget-object v3, Lcom/android/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/android/mail/providers/Settings;

    iput-object v3, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    goto :goto_1
.end method

.method public static getAllAccounts(Lcom/android/mail/content/ObjectCursor;)[Lcom/android/mail/providers/Account;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)[",
            "Lcom/android/mail/providers/Account;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, cursor:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;"
    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v3

    .line 450
    .local v3, initialLength:I
    #v3=(Integer);
    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 452
    :cond_0
    #v4=(Conflicted);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v0, v4, [Lcom/android/mail/providers/Account;

    .line 462
    :cond_1
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v4=(Boolean);
    return-object v0

    .line 455
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    new-array v0, v3, [Lcom/android/mail/providers/Account;

    .line 456
    .local v0, allAccounts:[Lcom/android/mail/providers/Account;
    #v0=(Reference);
    const/4 v1, 0x0

    .line 458
    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/mail/providers/Account;

    aput-object v4, v0, v1

    .line 459
    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->moveToNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 461
    sget-boolean v4, Lcom/android/mail/providers/Account;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eq v2, v3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #v4=(Reference);
    throw v4

    :cond_3
    #v4=(Boolean);
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public static newinstance(Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 8
    .parameter "serializedAccount"

    .prologue
    .line 286
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, json:Lorg/json/JSONObject;
    #v1=(Reference);
    const-string v4, "name"

    #v4=(Reference);
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/String;

    .line 288
    .local v2, name:Ljava/lang/String;
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/String;

    .line 289
    .local v3, type:Ljava/lang/String;
    new-instance v4, Lcom/android/mail/providers/Account;

    #v4=(UninitRef);
    invoke-direct {v4, v2, v3, p0}, Lcom/android/mail/providers/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-object v4

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Lorg/json/JSONException;
    #v0=(Reference);
    sget-object v4, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Could not create an account from this input: \"%s\""

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object p0, v6, v7

    invoke-static {v4, v0, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 592
    #v2=(Null);
    if-ne p1, p0, :cond_1

    .line 601
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 596
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 597
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v3=(Reference);v4=(Reference);
    move-object v0, p1

    .line 600
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Account;

    .line 601
    .local v0, other:Lcom/android/mail/providers/Account;
    iget-object v3, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/mail/providers/Account;->capabilities:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/providers/Account;->capabilities:I

    #v4=(Integer);
    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    iget v4, v0, Lcom/android/mail/providers/Account;->providerVersion:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v4=(Integer);
    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/mail/providers/Account;->color:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/providers/Account;->color:I

    #v4=(Integer);
    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    iget v4, v0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :cond_4
    #v3=(Integer);v4=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto/16 :goto_0
.end method

.method public getAccountManagerAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/mail/providers/Account;->amAccount:Landroid/accounts/Account;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 469
    new-instance v0, Landroid/accounts/Account;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Account;->amAccount:Landroid/accounts/Account;

    .line 471
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Account;->amAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getReplyFroms()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 695
    #v6=(Null);
    iget-object v0, p0, Lcom/android/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    #v0=(Reference);
    if-nez v0, :cond_2

    .line 696
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    .line 699
    const/high16 v0, 0x8

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    .line 724
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-object v0

    .line 704
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    iget-object v13, p0, Lcom/android/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    #v13=(Reference);
    new-instance v0, Lcom/android/mail/providers/ReplyFromAccount;

    #v0=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    move-object v1, p0

    #v1=(Reference);
    move v7, v6

    #v7=(Null);
    invoke-direct/range {v0 .. v7}, Lcom/android/mail/providers/ReplyFromAccount;-><init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    #v0=(Reference);
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 709
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    #v9=(UninitRef);
    iget-object v0, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    #v0=(Reference);
    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 711
    .local v9, accounts:Lorg/json/JSONArray;
    #v9=(Reference);
    const/4 v11, 0x0

    .local v11, i:I
    #v11=(Null);
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    .local v12, len:I
    :goto_1
    #v8=(Conflicted);v11=(Integer);v12=(Integer);
    if-ge v11, v12, :cond_2

    .line 712
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mail/providers/ReplyFromAccount;->deserialize(Lcom/android/mail/providers/Account;Lorg/json/JSONObject;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v8

    .line 714
    .local v8, a:Lcom/android/mail/providers/ReplyFromAccount;
    #v8=(Reference);
    if-eqz v8, :cond_1

    .line 715
    iget-object v0, p0, Lcom/android/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 719
    .end local v8           #a:Lcom/android/mail/providers/ReplyFromAccount;
    .end local v9           #accounts:Lorg/json/JSONArray;
    .end local v11           #i:I
    .end local v12           #len:I
    :catch_0
    #v0=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v10

    .line 720
    .local v10, e:Lorg/json/JSONException;
    #v10=(Reference);
    sget-object v0, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Unable to parse accountFromAddresses. name=%s"

    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v10, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 724
    .end local v10           #e:Lorg/json/JSONException;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v10=(Conflicted);v13=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    #v0=(Reference);
    goto :goto_0
.end method

.method public getValueMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 772
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v1, "accountManagerName"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v1, "providerVersion"

    iget v2, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v1, "accountUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v1, "capabilities"

    iget v2, p0, Lcom/android/mail/providers/Account;->capabilities:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v1, "folderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v1, "fullFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v1, "allFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v1, "searchUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v1, "accountFromAddresses"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v1, "expungeMessageUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v1, "undoUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v1, "accountSettingsIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v1, "helpIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v1, "sendFeedbackIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string v1, "reauthenticationUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v1, "syncStatus"

    iget v2, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v1, "composeUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v1, "recentFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v1, "defaultRecentFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v1, "manualSyncUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v1, "viewProxyUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v1, "accountCookieUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v1, "color"

    iget v2, p0, Lcom/android/mail/providers/Account;->color:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v1, "updateSettingsUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v1, "enableMessageTransforms"

    iget v2, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v1, "syncAuthority"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string v1, "quickResponseUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v1, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1, v0}, Lcom/android/mail/providers/Settings;->getValueMap(Ljava/util/Map;)Ljava/util/Map;

    .line 805
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 653
    const/16 v0, 0x1d

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget-object v2, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/mail/providers/Account;->capabilities:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget v2, p0, Lcom/android/mail/providers/Account;->color:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget v2, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isAccountInitializationRequired()Z
    .locals 2

    .prologue
    .line 483
    iget v0, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

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

.method public isAccountReady()Z
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->isAccountInitializationRequired()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->isAccountSyncRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isAccountSyncRequired()Z
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

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

.method public matches(Lcom/android/mail/providers/Account;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 690
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public ownsFromAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "fromAddress"

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/ReplyFromAccount;

    .line 734
    .local v1, replyFrom:Lcom/android/mail/providers/ReplyFromAccount;
    iget-object v2, v1, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 735
    const/4 v2, 0x1

    .line 739
    .end local v1           #replyFrom:Lcom/android/mail/providers/ReplyFromAccount;
    :goto_0
    #v1=(Conflicted);
    return v2

    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .locals 7

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .local v1, json:Lorg/json/JSONObject;
    :try_start_1
    #v1=(Reference);
    const-string v2, "name"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v2, "type"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v2, "accountManagerName"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v2, "providerVersion"

    iget v3, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    const-string v2, "accountUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v2, "capabilities"

    iget v3, p0, Lcom/android/mail/providers/Account;->capabilities:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    const-string v2, "folderListUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v2, "fullFolderListUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v2, "allFolderListUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v2, "searchUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "accountFromAddresses"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "expungeMessageUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v2, "undoUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v2, "accountSettingsIntentUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v2, "helpIntentUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v2, "sendFeedbackIntentUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v2, "reauthenticationUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v2, "syncStatus"

    iget v3, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    const-string v2, "composeUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v2, "mimeType"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v2, "recentFolderListUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v2, "color"

    iget v3, p0, Lcom/android/mail/providers/Account;->color:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string v2, "defaultRecentFolderListUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v2, "manualSyncUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v2, "viewProxyUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v2, "accountCookieUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v2, "updateSettingsUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v2, "enableMessageTransforms"

    iget v3, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v2, "syncAuthority"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v2, "quickResponseUri"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    iget-object v2, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "settings"

    iget-object v3, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-virtual {v3}, Lcom/android/mail/providers/Settings;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :cond_0
    :goto_0
    :try_start_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 266
    :catch_0
    #v0=(Uninit);v2=(Conflicted);v3=(Conflicted);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    move-exception v0

    .line 267
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Could not serialize account with name %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v6, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 231
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #json:Lorg/json/JSONObject;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2
.end method

.method public final settingsDiffer(Lcom/android/mail/providers/Account;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    .line 641
    #v0=(One);
    if-nez p1, :cond_1

    .line 645
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_1
    #v0=(One);v1=(Uninit);v2=(Uninit);
    iget v1, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v1=(Integer);
    iget v2, p1, Lcom/android/mail/providers/Account;->syncStatus:I

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mail/providers/Account;->color:I

    #v1=(Integer);
    iget v2, p1, Lcom/android/mail/providers/Account;->color:I

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->hashCode()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Settings;->hashCode()I

    move-result v2

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public supportsCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 475
    iget v0, p0, Lcom/android/mail/providers/Account;->capabilities:I

    #v0=(Integer);
    and-int/2addr v0, p1

    if-eqz v0, :cond_0

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

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 540
    #v3=(Null);
    iget-object v0, p0, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget v0, p0, Lcom/android/mail/providers/Account;->providerVersion:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v0, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 545
    iget v0, p0, Lcom/android/mail/providers/Account;->capabilities:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-object v0, p0, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 547
    iget-object v0, p0, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 548
    iget-object v0, p0, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 549
    iget-object v0, p0, Lcom/android/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 550
    iget-object v0, p0, Lcom/android/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 552
    iget-object v0, p0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 553
    iget-object v0, p0, Lcom/android/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 554
    iget-object v0, p0, Lcom/android/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 555
    iget-object v0, p0, Lcom/android/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 556
    iget-object v0, p0, Lcom/android/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 557
    iget v0, p0, Lcom/android/mail/providers/Account;->syncStatus:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v0, p0, Lcom/android/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 559
    iget-object v0, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 561
    iget v0, p0, Lcom/android/mail/providers/Account;->color:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v0, p0, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 563
    iget-object v0, p0, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 564
    iget-object v0, p0, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 565
    iget-object v0, p0, Lcom/android/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 566
    iget-object v0, p0, Lcom/android/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 567
    iget v0, p0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object v0, p0, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 570
    iget-object v0, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    if-nez v0, :cond_0

    .line 571
    sget-object v0, Lcom/android/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected null settings object in writeToParcel"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 572
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 574
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v0, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
