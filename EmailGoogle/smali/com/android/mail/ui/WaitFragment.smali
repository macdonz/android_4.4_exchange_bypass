.class public Lcom/android/mail/ui/WaitFragment;
.super Landroid/app/Fragment;
.source "WaitFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mDefault:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private getContent(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "root"

    .prologue
    const/4 v3, 0x0

    .line 90
    #v3=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    iget v1, v1, Lcom/android/mail/providers/Account;->syncStatus:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f040070

    #v2=(Integer);
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, view:Landroid/view/View;
    #v0=(Reference);
    const v1, 0x7f080148

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f080149

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :goto_0
    return-object v0

    .line 99
    .end local v0           #view:Landroid/view/View;
    :cond_0
    #v0=(Uninit);v1=(Conflicted);v2=(Conflicted);
    iget-boolean v1, p0, Lcom/android/mail/ui/WaitFragment;->mDefault:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f04006f

    #v2=(Integer);
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 102
    .end local v0           #view:Landroid/view/View;
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f040071

    #v2=(Integer);
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0
.end method

.method public static newInstance(Lcom/android/mail/providers/Account;)Lcom/android/mail/ui/WaitFragment;
    .locals 1
    .parameter "account"

    .prologue
    .line 56
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lcom/android/mail/ui/WaitFragment;->newInstance(Lcom/android/mail/providers/Account;Z)Lcom/android/mail/ui/WaitFragment;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static newInstance(Lcom/android/mail/providers/Account;Z)Lcom/android/mail/ui/WaitFragment;
    .locals 3
    .parameter "account"
    .parameter "def"

    .prologue
    .line 60
    new-instance v1, Lcom/android/mail/ui/WaitFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/ui/WaitFragment;-><init>()V

    .line 62
    .local v1, fragment:Lcom/android/mail/ui/WaitFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "account"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "isDefault"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/WaitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method


# virtual methods
.method getAccount()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 125
    .local v0, id:I
    #v0=(Integer);
    const v2, 0x7f080149

    #v2=(Integer);
    if-ne v0, v2, :cond_1

    .line 126
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "android.settings.SYNC_SETTINGS"

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    const/high16 v2, 0x1000

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/WaitFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 129
    :cond_1
    #v1=(Uninit);v2=(Integer);v3=(Uninit);v4=(Uninit);
    const v2, 0x7f080148

    if-ne v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/mail/ui/WaitFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/mail/ui/WaitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "account"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Account;

    iput-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 75
    const-string v1, "isDefault"

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/WaitFragment;->mDefault:Z

    .line 76
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 140
    #v3=(Null);
    new-instance v0, Landroid/content/CursorLoader;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    move-object v6, v3

    #v6=(Null);
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    iget-object v1, p0, Lcom/android/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f04006e

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, wrapper:Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/android/mail/ui/WaitFragment;->getContent(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, arg0:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/WaitFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, arg0:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public updateAccount(Lcom/android/mail/providers/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/mail/ui/WaitFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 110
    invoke-virtual {p0}, Lcom/android/mail/ui/WaitFragment;->getView()Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 113
    invoke-direct {p0, v0}, Lcom/android/mail/ui/WaitFragment;->getContent(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    :cond_0
    #v1=(Conflicted);
    return-void
.end method
