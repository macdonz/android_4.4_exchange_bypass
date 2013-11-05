.class public abstract Lcom/android/mail/ui/AbstractConversationViewFragment;
.super Landroid/app/Fragment;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Lcom/android/mail/browse/ConversationAccountController;
.implements Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
.implements Lcom/android/mail/browse/MessageCursor$ConversationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoader;,
        Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;
    }
.end annotation


# static fields
.field private static final BUNDLE_DETACHED:Ljava/lang/String;

.field private static final BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

.field private static final BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

.field private static final BUNDLE_USER_VISIBLE:Ljava/lang/String;

.field private static final BUNDLE_VIEW_STATE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAccount:Lcom/android/mail/providers/Account;

.field private final mAccountObserver:Lcom/android/mail/providers/AccountObserver;

.field protected mActivity:Lcom/android/mail/ui/ControllableActivity;

.field protected final mAddressCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseUri:Ljava/lang/String;

.field private mChangeFoldersMenuItem:Landroid/view/MenuItem;

.field private mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

.field private mContext:Landroid/content/Context;

.field protected mConversation:Lcom/android/mail/providers/Conversation;

.field private mCursor:Lcom/android/mail/browse/MessageCursor;

.field private final mHandler:Landroid/os/Handler;

.field private mHasConversationBeenTransformed:Z

.field private mHasConversationTransformBeenReverted:Z

.field private mIsDetached:Z

.field private final mMessageLoaderCallbacks:Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

.field private mSuppressMarkingViewed:Z

.field private mUserVisible:Z

.field protected mViewState:Lcom/android/mail/ui/ConversationViewState;

.field protected mWebViewClient:Lcom/android/mail/ui/AbstractConversationWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-class v1, Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "viewstate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_VIEW_STATE:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-class v1, Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uservisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_USER_VISIBLE:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-class v1, Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_DETACHED:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-class v1, Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversationtransformed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-class v1, Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversationreverted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;-><init>(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/ui/AbstractConversationViewFragment$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mMessageLoaderCallbacks:Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAddressCache:Ljava/util/Map;

    .line 97
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/AbstractConversationViewFragment$1;-><init>(Lcom/android/mail/ui/AbstractConversationViewFragment;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/ui/AbstractConversationViewFragment;)Lcom/android/mail/browse/MessageCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/android/mail/browse/MessageCursor;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/browse/MessageCursor;)Lcom/android/mail/browse/MessageCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/android/mail/browse/MessageCursor;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mail/ui/AbstractConversationViewFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$400(Lcom/android/mail/ui/AbstractConversationViewFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$500(Lcom/android/mail/ui/AbstractConversationViewFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onError()V

    return-void
.end method

.method public static makeBasicArgs(Lcom/android/mail/providers/Account;)Landroid/os/Bundle;
    .locals 2
    .parameter "account"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "account"

    #v1=(Reference);
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    return-object v0
.end method

.method private onError()V
    .locals 3

    .prologue
    .line 485
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "CVF: visible conv has no messages, exiting conv mode"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->popOut()V

    .line 490
    return-void
.end method

.method private popOut()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/AbstractConversationViewFragment$2;

    #v1=(UninitRef);
    const-string v2, "popOut"

    #v2=(Reference);
    invoke-direct {v1, p0, v2, p0}, Lcom/android/mail/ui/AbstractConversationViewFragment$2;-><init>(Lcom/android/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method public getContactInfoSource()Lcom/android/mail/ui/ContactLoaderCallbacks;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/android/mail/ui/ContactLoaderCallbacks;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/ui/ContactLoaderCallbacks;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

    .line 289
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method public getConversation()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    #v0=(Reference);
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method public getListController()Lcom/android/mail/ui/ConversationUpdater;
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ControllableActivity;

    .line 260
    .local v0, activity:Lcom/android/mail/ui/ControllableActivity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v1

    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getMessageCursor()Lcom/android/mail/browse/MessageCursor;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/android/mail/browse/MessageCursor;

    #v0=(Reference);
    return-object v0
.end method

.method public getMessageLoaderCallbacks()Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mMessageLoaderCallbacks:Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    #v0=(Reference);
    return-object v0
.end method

.method protected getNewViewState()Lcom/android/mail/ui/ConversationViewState;
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/android/mail/ui/ConversationViewState;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public isUserVisible()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    #v0=(Boolean);
    return v0
.end method

.method protected markUnread()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mSuppressMarkingViewed:Z

    .line 159
    return-void
.end method

.method protected abstract onAccountChanged(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, activity:Landroid/app/Activity;
    #v0=(Reference);
    instance-of v1, v0, Lcom/android/mail/ui/ControllableActivity;

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 243
    sget-object v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "ConversationViewFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 255
    :cond_1
    :goto_0
    #v1=(Conflicted);
    return-void

    :cond_2
    #v1=(Boolean);
    move-object v1, v0

    .line 250
    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/ControllableActivity;

    iput-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 251
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    .line 252
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/android/mail/ui/AbstractConversationWebViewClient;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/AbstractConversationWebViewClient;->setActivity(Landroid/app/Activity;)V

    .line 253
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 254
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/android/mail/ui/AbstractConversationWebViewClient;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/AbstractConversationWebViewClient;->setAccount(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method protected onConversationSeen()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    .line 505
    #v3=(One);
    sget-object v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v5, "AbstractConversationViewFragment#onConversationSeen()"

    #v5=(Reference);
    new-array v6, v4, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v2, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ControllableActivity;

    .line 509
    .local v0, activity:Lcom/android/mail/ui/ControllableActivity;
    if-nez v0, :cond_0

    .line 510
    sget-object v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ignoring onConversationSeen for conv=%s"

    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-wide v6, v6, Lcom/android/mail/providers/Conversation;->id:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v3, v4

    invoke-static {v2, v5, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 545
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Reference);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 514
    :cond_0
    #v1=(Uninit);v3=(One);v4=(Null);v7=(Uninit);v8=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/android/mail/ui/ConversationViewState;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v2, v5}, Lcom/android/mail/ui/ConversationViewState;->setInfoForConversation(Lcom/android/mail/providers/Conversation;)V

    .line 516
    sget-object v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onConversationSeen() - mSuppressMarkingViewed = %b"

    new-array v6, v3, [Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mSuppressMarkingViewed:Z

    #v7=(Boolean);
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 522
    iget-boolean v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mSuppressMarkingViewed:Z

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v1

    .line 528
    .local v1, cursor:Lcom/android/mail/browse/MessageCursor;
    #v1=(Reference);
    sget-object v5, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onConversationSeen() - mConversation.isViewed() = %b, cursor null = %b, cursor.isConversationRead() = %b"

    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v7, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->isViewed()Z

    move-result v2

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v7, v4

    if-nez v1, :cond_3

    move v2, v3

    :goto_1
    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v7, v3

    const/4 v8, 0x2

    #v8=(PosByte);
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageCursor;->isConversationRead()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->isViewed()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageCursor;->isConversationRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 534
    :cond_1
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v2

    #v2=(Reference);
    new-array v5, v3, [Lcom/android/mail/providers/Conversation;

    iget-object v6, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    aput-object v6, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v2, v4, v3, v3}, Lcom/android/mail/ui/ConversationUpdater;->markConversationsRead(Ljava/util/Collection;ZZ)V

    .line 539
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageCursor;->isClosed()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 540
    invoke-virtual {v1}, Lcom/android/mail/browse/MessageCursor;->markMessagesRead()V

    .line 544
    .end local v1           #cursor:Lcom/android/mail/browse/MessageCursor;
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v8=(Conflicted);
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ConversationListCallbacks;->onConversationSeen()V

    goto/16 :goto_0

    .restart local v1       #cursor:Lcom/android/mail/browse/MessageCursor;
    :cond_3
    #v1=(Reference);v4=(Null);v8=(Uninit);
    move v2, v4

    .line 528
    #v2=(Null);
    goto :goto_1

    :cond_4
    #v2=(Conflicted);v8=(PosByte);
    move v2, v4

    #v2=(Null);
    goto :goto_2
.end method

.method public onConversationTransformed()V
    .locals 3

    .prologue
    .line 609
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    .line 610
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/AbstractConversationViewFragment$3;

    #v1=(UninitRef);
    const-string v2, "invalidateOptionsMenu"

    #v2=(Reference);
    invoke-direct {v1, p0, v2, p0}, Lcom/android/mail/ui/AbstractConversationViewFragment$3;-><init>(Lcom/android/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 616
    return-void
.end method

.method public abstract onConversationUpdated(Lcom/android/mail/providers/Conversation;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 185
    #v3=(Null);
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->parseArguments()V

    .line 188
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->setBaseUri()V

    .line 190
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "onCreate in ConversationViewFragment (this=%s)"

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/Object;

    #v2=(Reference);
    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/AbstractConversationViewFragment;->setHasOptionsMenu(Z)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_VIEW_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState;

    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/android/mail/ui/ConversationViewState;

    .line 196
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_USER_VISIBLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    .line 197
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_DETACHED:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    .line 198
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    .line 200
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    .line 207
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 203
    :cond_0
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getNewViewState()Lcom/android/mail/ui/ConversationViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/android/mail/ui/ConversationViewState;

    .line 204
    iput-boolean v3, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    .line 205
    iput-boolean v3, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 300
    const v0, 0x7f080170

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mChangeFoldersMenuItem:Landroid/view/MenuItem;

    .line 301
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 376
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 377
    return-void
.end method

.method public onDetachedModeEntered()V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v0

    .line 596
    .local v0, messageCursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_1

    .line 597
    :cond_0
    #v1=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->popOut()V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_1
    #v1=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    goto :goto_0
.end method

.method public onFoldersClicked()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mChangeFoldersMenuItem:Landroid/view/MenuItem;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unable to open \'change folders\' dialog for a conversation"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 350
    :goto_0
    #v2=(Conflicted);
    return-void

    .line 349
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mChangeFoldersMenuItem:Landroid/view/MenuItem;

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ControllableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method protected abstract onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/MessageCursor;Lcom/android/mail/browse/MessageCursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;>;",
            "Lcom/android/mail/browse/MessageCursor;",
            "Lcom/android/mail/browse/MessageCursor;",
            ")V"
        }
    .end annotation
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 305
    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->isUserVisible()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 313
    sget-object v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "ACVF ignoring onOptionsItemSelected b/c userVisibleHint is false. f=%s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    sget-object v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-static {v2, v3}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 316
    sget-object v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {p0}, Lcom/android/mail/utils/Utils;->dumpFragment(Landroid/app/Fragment;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 321
    :cond_1
    #v0=(Null);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    const/4 v0, 0x0

    .line 322
    .local v0, handled:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 323
    .local v1, itemId:I
    #v1=(Integer);
    const v2, 0x7f08016e

    #v2=(Integer);
    if-ne v1, v2, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->markUnread()V

    .line 325
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 326
    :cond_2
    #v0=(Null);
    const v2, 0x7f080175

    if-ne v1, v2, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->showUntransformedConversation()V

    .line 328
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 336
    const v1, 0x7f080175

    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->supportsMessageTransforms()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 338
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/android/mail/ui/ConversationViewState;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_VIEW_STATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/android/mail/ui/ConversationViewState;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    :cond_0
    #v1=(Conflicted);
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_USER_VISIBLE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_DETACHED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    sget-object v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 357
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/analytics/Tracker;->sendView(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public abstract onUserVisibleHintChanged()V
.end method

.method protected parseArguments()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "account"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Account;

    iput-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 215
    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Conversation;

    iput-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    .line 216
    return-void
.end method

.method protected setBaseUri()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "x-thread://"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-wide v1, v1, Lcom/android/mail/providers/Conversation;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mBaseUri:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setExtraUserVisibleHint(Z)V
    .locals 6
    .parameter "isVisibleToUser"

    .prologue
    .line 384
    sget-object v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "in CVF.setHint, val=%s (%s)"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 385
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    #v1=(Boolean);
    if-eq v1, p1, :cond_0

    .line 386
    iput-boolean p1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v0

    .line 388
    .local v0, cursor:Lcom/android/mail/browse/MessageCursor;
    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->getCount()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onError()V

    .line 395
    .end local v0           #cursor:Lcom/android/mail/browse/MessageCursor;
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 393
    .restart local v0       #cursor:Lcom/android/mail/browse/MessageCursor;
    :cond_1
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onUserVisibleHintChanged()V

    goto :goto_0
.end method

.method public shouldApplyTransforms()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/providers/Account;->enableMessageTransforms:I

    #v0=(Integer);
    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public showUntransformedConversation()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    .line 627
    return-void
.end method

.method abstract supportsMessageTransforms()Z
.end method

.method protected timerMark(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->isUserVisible()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/android/mail/utils/Utils;->sConvLoadTimer:Lcom/android/mail/perf/SimpleTimer;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 405
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, s:Ljava/lang/String;
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-static {v1, v2}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    #v1=(Reference);
    if-nez v1, :cond_1

    .line 235
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    .restart local v0       #s:Ljava/lang/String;
    :cond_1
    #v1=(Reference);v2=(PosByte);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "("

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
