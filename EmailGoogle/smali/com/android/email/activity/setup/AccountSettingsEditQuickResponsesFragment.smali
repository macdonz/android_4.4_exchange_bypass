.class public Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsEditQuickResponsesFragment.java"


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v6, 0x0

    .line 71
    #v6=(Null);
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "AccountSettingsEditQuickResponsesFragment.title"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f04005d

    #v2=(Integer);
    new-array v4, v8, [Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "quickResponse"

    #v5=(Reference);
    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v8, 0x7f080123

    #v8=(Integer);
    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 83
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/widget/ListView;

    .line 85
    .local v7, listView:Landroid/widget/ListView;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/widget/SimpleCursorAdapter;)V

    #v2=(Reference);
    invoke-virtual {v1, v6, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 104
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "account"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 118
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->setHasOptionsMenu(Z)V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 150
    const v0, 0x7f11000c

    #v0=(Integer);
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 151
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 124
    const v3, 0x7f040002

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, view:Landroid/view/View;
    #v2=(Reference);
    const v3, 0x7f08002c

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/ListView;

    .line 129
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f08002d

    #v4=(Integer);
    invoke-static {v3, v4}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, emptyView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 132
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;

    #v3=(UninitRef);
    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/widget/ListView;)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v0, 0x1

    .line 155
    #v0=(One);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    #v1=(Integer);
    const v2, 0x7f080190

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-static {v3, v1, v0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->newInstance(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/email/activity/setup/EditQuickResponseDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 160
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_0
    #v0=(One);v1=(Integer);v2=(Integer);
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 108
    const-string v1, "AccountSettingsEditQuickResponsesFragment.title"

    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
