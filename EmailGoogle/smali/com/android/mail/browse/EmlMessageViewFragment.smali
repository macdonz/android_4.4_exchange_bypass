.class public Lcom/android/mail/browse/EmlMessageViewFragment;
.super Landroid/app/Fragment;
.source "EmlMessageViewFragment.java"

# interfaces
.implements Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/EmlMessageViewFragment$1;,
        Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;,
        Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;,
        Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountUri:Landroid/net/Uri;

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

.field private mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

.field private mEmlFileUri:Landroid/net/Uri;

.field private final mFilenameLoadCallbacks:Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

.field private final mHandler:Landroid/os/Handler;

.field private final mMessageLoadCallbacks:Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

.field private mViewController:Lcom/android/mail/ui/SecureConversationViewController;

.field private mWebViewClient:Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/EmlMessageViewFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    #v1=(Null);
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    #p0=(Reference);
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

    #v0=(UninitRef);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;-><init>(Lcom/android/mail/browse/EmlMessageViewFragment;Lcom/android/mail/browse/EmlMessageViewFragment$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mMessageLoadCallbacks:Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

    .line 76
    new-instance v0, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

    #v0=(UninitRef);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;-><init>(Lcom/android/mail/browse/EmlMessageViewFragment;Lcom/android/mail/browse/EmlMessageViewFragment$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mFilenameLoadCallbacks:Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    .line 138
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/mail/browse/EmlMessageViewFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mail/browse/EmlMessageViewFragment;)Lcom/android/mail/ui/SecureConversationViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mail/browse/EmlMessageViewFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mEmlFileUri:Landroid/net/Uri;

    #v0=(Reference);
    return-object v0
.end method

.method public static newInstance(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/mail/browse/EmlMessageViewFragment;
    .locals 3
    .parameter "emlFileUri"
    .parameter "accountUri"

    .prologue
    .line 126
    new-instance v1, Lcom/android/mail/browse/EmlMessageViewFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/browse/EmlMessageViewFragment;-><init>()V

    .line 127
    .local v1, f:Lcom/android/mail/browse/EmlMessageViewFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "eml_file_uri"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    const-string v2, "account_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/EmlMessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 131
    return-object v1
.end method


# virtual methods
.method public getAccountUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mAccountUri:Landroid/net/Uri;

    #v0=(Reference);
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
    .line 209
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    #v0=(Reference);
    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "x-thread://message/rfc822/"

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic getContactInfoSource()Lcom/android/mail/ContactInfoSource;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getContactInfoSource()Lcom/android/mail/ui/ContactLoaderCallbacks;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getContactInfoSource()Lcom/android/mail/ui/ContactLoaderCallbacks;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/mail/ui/ContactLoaderCallbacks;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/mail/ui/ContactLoaderCallbacks;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

    .line 199
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mContactLoaderCallbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;

    return-object v0
.end method

.method public getConversationAccountController()Lcom/android/mail/browse/ConversationAccountController;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/EmlViewerActivity;

    return-object v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 181
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method public getWebViewClient()Lcom/android/mail/ui/AbstractConversationWebViewClient;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mWebViewClient:Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    #v0=(Reference);
    return-object v0
.end method

.method public isViewOnlyMode()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public isViewVisibleToUser()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mWebViewClient:Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->setActivity(Landroid/app/Activity;)V

    .line 164
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SecureConversationViewController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "eml_file_uri"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mEmlFileUri:Landroid/net/Uri;

    .line 146
    const-string v1, "account_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mAccountUri:Landroid/net/Uri;

    .line 148
    new-instance v1, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;-><init>(Lcom/android/mail/browse/EmlMessageViewFragment;Lcom/android/mail/providers/Account;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mWebViewClient:Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    .line 149
    new-instance v1, Lcom/android/mail/ui/SecureConversationViewController;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/SecureConversationViewController;-><init>(Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    .line 151
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a012d

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 152
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/android/mail/ui/SecureConversationViewController;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mail/ui/SecureConversationViewController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setupConversationHeaderView(Lcom/android/mail/browse/ConversationViewHeader;)V
    .locals 0
    .parameter "headerView"

    .prologue
    .line 187
    return-void
.end method

.method public setupMessageHeaderVeiledMatcher(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 0
    .parameter "messageHeaderView"

    .prologue
    .line 215
    return-void
.end method

.method public startMessageLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 220
    .local v0, manager:Landroid/app/LoaderManager;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mMessageLoadCallbacks:Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

    #v2=(Reference);
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 221
    const/4 v1, 0x2

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/mail/browse/EmlMessageViewFragment;->mFilenameLoadCallbacks:Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 222
    return-void
.end method
