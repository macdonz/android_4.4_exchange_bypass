.class public Lcom/android/mail/browse/EmlViewerActivity;
.super Landroid/app/Activity;
.source "EmlViewerActivity.java"

# interfaces
.implements Lcom/android/mail/browse/ConversationAccountController;
.implements Lcom/android/mail/ui/FeedbackEnabledActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/EmlViewerActivity$1;,
        Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private final mAccountLoadCallbacks:Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

.field private mAccountUri:Landroid/net/Uri;

.field private mHelpItem:Landroid/view/MenuItem;

.field private mSendFeedbackItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/EmlViewerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;-><init>(Lcom/android/mail/browse/EmlViewerActivity;Lcom/android/mail/browse/EmlViewerActivity$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountLoadCallbacks:Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

    .line 160
    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/browse/EmlViewerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mail/browse/EmlViewerActivity;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    return-object p1
.end method


# virtual methods
.method public getAccount()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 152
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    .line 66
    #v8=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v5, 0x7f040047

    #v5=(Integer);
    invoke-virtual {p0, v5}, Lcom/android/mail/browse/EmlViewerActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 70
    .local v1, actionBar:Landroid/app/ActionBar;
    #v1=(Reference);
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 73
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, type:Ljava/lang/String;
    #v4=(Reference);
    const-string v5, "extra-account-uri"

    #v5=(Reference);
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    .line 77
    if-nez p1, :cond_3

    .line 78
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/android/mail/utils/MimeType;->isEmlMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 81
    .local v3, transaction:Landroid/app/FragmentTransaction;
    #v3=(Reference);
    const v5, 0x7f080103

    #v5=(Integer);
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    #v7=(Reference);
    invoke-static {v6, v7}, Lcom/android/mail/browse/EmlMessageViewFragment;->newInstance(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/mail/browse/EmlMessageViewFragment;

    move-result-object v6

    const-string v7, "eml_message_fragment"

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 83
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 99
    .end local v3           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    #v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    #v5=(Reference);
    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountLoadCallbacks:Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

    #v7=(Reference);
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 102
    :cond_1
    :goto_1
    #v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 85
    :cond_2
    #v3=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    sget-object v5, Lcom/android/mail/browse/EmlViewerActivity;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "Entered EmlViewerActivity with wrong intent action or type: %s, %s"

    #v6=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    aput-object v0, v7, v8

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->finish()V

    goto :goto_1

    .line 92
    :cond_3
    #v6=(Uninit);v7=(Uninit);
    const-string v5, "saved-account"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 93
    const-string v5, "saved-account"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/mail/providers/Account;

    iput-object v5, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 114
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .line 111
    :cond_0
    #v0=(Reference);v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110007

    #v1=(Integer);
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    const v0, 0x7f080169

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mHelpItem:Landroid/view/MenuItem;

    .line 113
    const v0, 0x7f080168

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mSendFeedbackItem:Landroid/view/MenuItem;

    .line 114
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 133
    #v1=(One);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 134
    .local v0, itemId:I
    #v0=(Integer);
    const v2, 0x102002c

    #v2=(Integer);
    if-ne v0, v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlViewerActivity;->finish()V

    .line 147
    :goto_0
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 137
    :cond_0
    #v1=(One);v2=(Integer);v3=(Uninit);
    const v2, 0x7f080167

    if-ne v0, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-static {p0, v2}, Lcom/android/mail/utils/Utils;->showSettings(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    goto :goto_0

    .line 139
    :cond_1
    #v2=(Integer);
    const v2, 0x7f080169

    if-ne v0, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    const v3, 0x7f0a0016

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/mail/browse/EmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {p0, v2, v3}, Lcom/android/mail/utils/Utils;->showHelp(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    #v2=(Integer);v3=(Uninit);
    const v2, 0x7f080168

    if-ne v0, v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v2, v3}, Lcom/android/mail/utils/Utils;->sendFeedback(Lcom/android/mail/ui/FeedbackEnabledActivity;Lcom/android/mail/providers/Account;Z)V

    goto :goto_0

    .line 144
    :cond_3
    #v2=(Integer);v3=(Uninit);
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 119
    #v1=(One);
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mHelpItem:Landroid/view/MenuItem;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/mail/browse/EmlViewerActivity;->mHelpItem:Landroid/view/MenuItem;

    #v3=(Reference);
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    const v4, 0x8000

    #v4=(Char);
    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    #v4=(Conflicted);
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mSendFeedbackItem:Landroid/view/MenuItem;

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/mail/browse/EmlViewerActivity;->mSendFeedbackItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/browse/EmlViewerActivity;->mAccount:Lcom/android/mail/providers/Account;

    const/high16 v4, 0x1

    #v4=(Integer);
    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    #v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    :cond_2
    return v1

    :cond_3
    #v0=(Conflicted);v2=(Null);v3=(Reference);
    move v0, v2

    .line 120
    #v0=(Null);
    goto :goto_0
.end method
