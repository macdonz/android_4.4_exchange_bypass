.class public Lcom/android/mail/compose/FromAddressSpinner;
.super Landroid/widget/Spinner;
.source "FromAddressSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/compose/FromAddressSpinner$OnAccountChangedListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/mail/providers/ReplyFromAccount;

.field private mAccountChangedListener:Lcom/android/mail/compose/FromAddressSpinner$OnAccountChangedListener;

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplyFromAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/FromAddressSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "set"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    .line 48
    return-void
.end method

.method private selectCurrentAccount()V
    .locals 5

    .prologue
    .line 56
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v3=(Reference);
    if-nez v3, :cond_1

    .line 68
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 59
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Reference);v4=(Uninit);
    const/4 v1, 0x0

    .line 60
    .local v1, currentIndex:I
    #v1=(Null);
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v1=(Integer);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 61
    .local v0, acct:Lcom/android/mail/providers/ReplyFromAccount;
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    #v4=(Reference);
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 63
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v1, v3}, Lcom/android/mail/compose/FromAddressSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 66
    :cond_2
    #v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCurrentAccount()Lcom/android/mail/providers/ReplyFromAccount;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v0=(Reference);
    return-object v0
.end method

.method public getMatchingReplyFromAccount(Ljava/lang/String;)Lcom/android/mail/providers/ReplyFromAccount;
    .locals 3
    .parameter "accountString"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 73
    .local v0, acct:Lcom/android/mail/providers/ReplyFromAccount;
    iget-object v2, v0, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 78
    .end local v0           #acct:Lcom/android/mail/providers/ReplyFromAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_1
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getReplyFromAccounts()Ljava/util/List;
    .locals 1
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
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    #v0=(Reference);
    return-object v0
.end method

.method protected initFromSpinner()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 123
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    #v3=(Reference);
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 126
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);v4=(Uninit);
    new-instance v1, Lcom/android/mail/compose/FromAddressSpinnerAdapter;

    #v1=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/compose/FromAddressSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v1, v3}, Lcom/android/mail/compose/FromAddressSpinnerAdapter;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, adapter:Lcom/android/mail/compose/FromAddressSpinnerAdapter;
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 129
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v2=(Reference);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Account;

    .line 130
    .local v0, account:Lcom/android/mail/providers/Account;
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    #v3=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 132
    .end local v0           #account:Lcom/android/mail/providers/Account;
    :cond_2
    #v0=(Conflicted);v3=(Boolean);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lcom/android/mail/compose/FromAddressSpinnerAdapter;->addAccounts(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/FromAddressSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 135
    invoke-direct {p0}, Lcom/android/mail/compose/FromAddressSpinner;->selectCurrentAccount()V

    .line 136
    invoke-virtual {p0, p0}, Lcom/android/mail/compose/FromAddressSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public initialize(ILcom/android/mail/providers/Account;[Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V
    .locals 6
    .parameter "action"
    .parameter "currentAccount"
    .parameter "syncingAccounts"
    .parameter "refMessage"

    .prologue
    .line 94
    iget-object v4, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v4, p3, v5}, Lcom/android/mail/utils/AccountUtils;->mergeAccountLists(Ljava/util/List;[Lcom/android/mail/providers/Account;Z)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Account;>;"
    #v1=(Reference);
    const/4 v4, -0x1

    #v4=(Byte);
    if-ne p1, v4, :cond_0

    .line 97
    iput-object v1, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    .line 114
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/compose/FromAddressSpinner;->initFromSpinner()V

    .line 115
    return-void

    .line 100
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Byte);v5=(One);
    move-object v3, p2

    .line 102
    .local v3, replyAccount:Lcom/android/mail/providers/Account;
    #v3=(Reference);
    if-eqz p4, :cond_2

    iget-object v4, p4, Lcom/android/mail/providers/Message;->accountUri:Landroid/net/Uri;

    #v4=(Reference);
    if-eqz v4, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Conflicted);v2=(Reference);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Account;

    .line 106
    .local v0, account:Lcom/android/mail/providers/Account;
    iget-object v4, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, p4, Lcom/android/mail/providers/Message;->accountUri:Landroid/net/Uri;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 107
    move-object v3, v0

    .line 112
    .end local v0           #account:Lcom/android/mail/providers/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/mail/compose/FromAddressSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 150
    .local v0, selection:Lcom/android/mail/providers/ReplyFromAccount;
    iget-object v1, v0, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 151
    iput-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    .line 152
    iget-object v1, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccountChangedListener:Lcom/android/mail/compose/FromAddressSpinner$OnAccountChangedListener;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/compose/FromAddressSpinner$OnAccountChangedListener;->onAccountChanged()V

    .line 154
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setCurrentAccount(Lcom/android/mail/providers/ReplyFromAccount;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    .line 52
    invoke-direct {p0}, Lcom/android/mail/compose/FromAddressSpinner;->selectCurrentAccount()V

    .line 53
    return-void
.end method

.method public setOnAccountChangedListener(Lcom/android/mail/compose/FromAddressSpinner$OnAccountChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/mail/compose/FromAddressSpinner;->mAccountChangedListener:Lcom/android/mail/compose/FromAddressSpinner$OnAccountChangedListener;

    .line 145
    return-void
.end method
