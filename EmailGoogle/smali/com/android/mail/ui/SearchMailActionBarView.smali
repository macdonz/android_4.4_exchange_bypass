.class public Lcom/android/mail/ui/SearchMailActionBarView;
.super Lcom/android/mail/ui/MailActionBarView;
.source "SearchMailActionBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/SearchMailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/SearchMailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/ui/MailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    #p0=(Reference);
    return-void
.end method

.method private clearSearchFocus()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->getSearch()Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    .local v0, search:Landroid/view/MenuItem;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/SearchView;

    .line 93
    .local v1, searchWidget:Landroid/widget/SearchView;
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 95
    .end local v1           #searchWidget:Landroid/widget/SearchView;
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method private setSearchQueryTerm()V
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->getSearch()Landroid/view/MenuItem;

    move-result-object v1

    .line 102
    .local v1, search:Landroid/view/MenuItem;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 104
    iget-object v3, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "query"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, query:Ljava/lang/String;
    #v0=(Reference);
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/SearchView;

    .line 107
    .local v2, searchWidget:Landroid/widget/SearchView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 108
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v0, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 111
    .end local v0           #query:Ljava/lang/String;
    .end local v2           #searchWidget:Landroid/widget/SearchView;
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->getMode()I

    move-result v0

    .line 119
    .local v0, mode:I
    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    const/4 v1, 0x4

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ActivityController;->exitSearchMode()V

    .line 129
    :cond_1
    #v1=(Conflicted);
    const/4 v1, 0x1

    #v1=(One);
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 51
    #v1=(Null);
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 52
    const v0, 0x7f080015

    #v0=(Integer);
    invoke-static {p1, v0, v1}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 53
    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    #v0=(Conflicted);
    return v1

    .line 55
    :pswitch_0
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->setSearchQueryTerm()V

    .line 56
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-direct {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->clearSearchFocus()V

    goto :goto_0

    .line 61
    :pswitch_1
    #v0=(Integer);
    iget-boolean v0, p0, Lcom/android/mail/ui/MailActionBarView;->mIsOnTablet:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->setSearchQueryTerm()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-direct {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->clearSearchFocus()V

    goto :goto_0

    .line 53
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewModeChanged(I)V
    .locals 1
    .parameter "newMode"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->onViewModeChanged(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->getMode()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mail/ui/SearchMailActionBarView;->setEmptyMode()V

    goto :goto_0

    .line 75
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
