.class public Lcom/android/mail/ui/SecureConversationViewFragment;
.super Lcom/android/mail/ui/AbstractConversationViewFragment;
.source "SecureConversationViewFragment.java"

# interfaces
.implements Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mViewController:Lcom/android/mail/ui/SecureConversationViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/ui/SecureConversationViewFragment;)Lcom/android/mail/ui/SecureConversationViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(Reference);
    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/SecureConversationViewFragment;
    .locals 3
    .parameter "existingArgs"
    .parameter "conversation"

    .prologue
    .line 97
    new-instance v1, Lcom/android/mail/ui/SecureConversationViewFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/ui/SecureConversationViewFragment;-><init>()V

    .line 98
    .local v1, f:Lcom/android/mail/ui/SecureConversationViewFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 99
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "conversation"

    #v2=(Reference);
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/SecureConversationViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method

.method private renderMessage(Lcom/android/mail/browse/MessageCursor;)V
    .locals 3
    .parameter "newCursor"

    .prologue
    const/4 v2, 0x0

    .line 238
    #v2=(Null);
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/browse/MessageCursor;->isLoaded()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 239
    :cond_0
    #v0=(Conflicted);
    sget-object v0, Lcom/android/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "CONV RENDER: existing cursor is null, rendering from scratch"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 242
    :cond_2
    #v0=(Boolean);v1=(Uninit);v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p1}, Lcom/android/mail/browse/MessageCursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 247
    sget-object v0, Lcom/android/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "unable to open message cursor"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 251
    :cond_3
    #v0=(Boolean);v1=(Uninit);v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SecureConversationViewController;->renderMessage(Lcom/android/mail/browse/ConversationMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccountUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAddressCache:Ljava/util/Map;

    #v0=(Reference);
    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mBaseUri:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic getContactInfoSource()Lcom/android/mail/ContactInfoSource;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getContactInfoSource()Lcom/android/mail/ui/ContactLoaderCallbacks;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getConversationAccountController()Lcom/android/mail/browse/ConversationAccountController;
    .locals 0

    .prologue
    .line 156
    return-object p0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 134
    return-object p0
.end method

.method public getWebViewClient()Lcom/android/mail/ui/AbstractConversationWebViewClient;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/android/mail/ui/AbstractConversationWebViewClient;

    #v0=(Reference);
    return-object v0
.end method

.method public isViewOnlyMode()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isViewVisibleToUser()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->isUserVisible()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected markUnread()V
    .locals 9

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->markUnread()V

    .line 197
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ControllableActivity;

    .line 198
    .local v0, activity:Lcom/android/mail/ui/ControllableActivity;
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/SecureConversationViewController;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    .line 199
    .local v1, message:Lcom/android/mail/browse/ConversationMessage;
    #v1=(Reference);
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    .line 200
    :cond_0
    sget-object v5, Lcom/android/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "ignoring markUnread for conv=%s"

    #v6=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v7, v3, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    #v3=(Reference);
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-wide v3, v3, Lcom/android/mail/providers/Conversation;->id:J

    :goto_0
    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    :goto_1
    #v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 200
    :cond_1
    #v2=(Uninit);v4=(Uninit);v6=(Reference);v7=(Reference);v8=(Null);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    goto :goto_0

    .line 204
    :cond_2
    #v3=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    new-instance v2, Ljava/util/HashSet;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v2, uris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    #v2=(Reference);
    iget-object v3, v1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/android/mail/ui/ConversationViewState;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationViewState;->getConversationInfo()[B

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lcom/android/mail/ui/ConversationUpdater;->markConversationMessagesUnread(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_1
.end method

.method public onAccountChanged(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V
    .locals 1
    .parameter "newAccount"
    .parameter "oldAccount"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/SecureConversationViewFragment;->renderMessage(Lcom/android/mail/browse/MessageCursor;)V

    .line 213
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SecureConversationViewController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public onConversationUpdated(Lcom/android/mail/providers/Conversation;)V
    .locals 2
    .parameter "conv"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/SecureConversationViewController;->getConversationHeaderView()Lcom/android/mail/browse/ConversationViewHeader;

    move-result-object v0

    .line 257
    .local v0, headerView:Lcom/android/mail/browse/ConversationViewHeader;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->onConversationUpdated(Lcom/android/mail/providers/Conversation;)V

    .line 259
    iget-object v1, p1, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public onConversationViewHeaderHeightChange(I)V
    .locals 0
    .parameter "newHeight"

    .prologue
    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v0, Lcom/android/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;-><init>(Lcom/android/mail/ui/SecureConversationViewFragment;Lcom/android/mail/providers/Account;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/android/mail/ui/AbstractConversationWebViewClient;

    .line 115
    new-instance v0, Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/SecureConversationViewController;-><init>(Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    .line 116
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mail/ui/SecureConversationViewController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/MessageCursor;Lcom/android/mail/browse/MessageCursor;)V
    .locals 0
    .parameter
    .parameter "newCursor"
    .parameter "oldCursor"
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

    .prologue
    .line 233
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/browse/ConversationMessage;>;>;"
    invoke-direct {p0, p2}, Lcom/android/mail/ui/SecureConversationViewFragment;->renderMessage(Lcom/android/mail/browse/MessageCursor;)V

    .line 234
    return-void
.end method

.method public onUserVisibleHintChanged()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 225
    :cond_1
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->isUserVisible()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->onConversationSeen()V

    goto :goto_0
.end method

.method public setupConversationHeaderView(Lcom/android/mail/browse/ConversationViewHeader;)V
    .locals 1
    .parameter "headerView"

    .prologue
    .line 144
    invoke-virtual {p1, p0, p0}, Lcom/android/mail/browse/ConversationViewHeader;->setCallbacks(Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/android/mail/browse/ConversationAccountController;)V

    .line 145
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;->setFolders(Lcom/android/mail/providers/Conversation;)V

    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setupMessageHeaderVeiledMatcher(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 1
    .parameter "messageHeaderView"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/AccountController;->getVeiledAddressMatcher()Lcom/android/mail/utils/VeiledAddressMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/MessageHeaderView;->setVeiledMatcher(Lcom/android/mail/utils/VeiledAddressMatcher;)V

    .line 169
    return-void
.end method

.method public startMessageLoader()V
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/SecureConversationViewFragment;->getMessageLoaderCallbacks()Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 174
    return-void
.end method

.method public supportsMessageTransforms()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method
