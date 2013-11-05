.class public Lcom/android/email/activity/ComposeActivityEmail;
.super Lcom/android/mail/compose/ComposeActivity;
.source "ComposeActivityEmail.java"

# interfaces
.implements Lcom/android/email/activity/InsertQuickResponseDialog$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mail/compose/ComposeActivity;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/mail/compose/ComposeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 34
    invoke-virtual {p0}, Lcom/android/email/activity/ComposeActivityEmail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f110005

    #v1=(Integer);
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    #v1=(Integer);
    const v2, 0x7f080180

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    .line 41
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-static {v1, v2}, Lcom/android/email/activity/InsertQuickResponseDialog;->newInstance(Landroid/app/Fragment;Lcom/android/mail/providers/Account;)Lcom/android/email/activity/InsertQuickResponseDialog;

    move-result-object v0

    .line 43
    .local v0, dialog:Lcom/android/email/activity/InsertQuickResponseDialog;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/ComposeActivityEmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "insertQuickResponseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/InsertQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 45
    .end local v0           #dialog:Lcom/android/email/activity/InsertQuickResponseDialog;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/mail/compose/ComposeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method public onQuickResponseSelected(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "quickResponse"

    .prologue
    .line 49
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 50
    .local v3, selEnd:I
    #v3=(Integer);
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 52
    .local v4, selStart:I
    #v4=(Integer);
    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    .line 53
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #v0=(UninitRef);
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .local v0, messageBody:Landroid/text/SpannableStringBuilder;
    #v0=(Reference);
    if-ge v4, v3, :cond_0

    move v2, v4

    .line 56
    .local v2, replaceStart:I
    :goto_0
    #v2=(Integer);
    if-ge v4, v3, :cond_1

    move v1, v3

    .line 57
    .local v1, replaceEnd:I
    :goto_1
    #v1=(Integer);
    invoke-virtual {v0, v2, v1, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    #v6=(Integer);
    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 64
    .end local v0           #messageBody:Landroid/text/SpannableStringBuilder;
    .end local v1           #replaceEnd:I
    .end local v2           #replaceStart:I
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .restart local v0       #messageBody:Landroid/text/SpannableStringBuilder;
    :cond_0
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v6=(Uninit);
    move v2, v3

    .line 55
    #v2=(Integer);
    goto :goto_0

    .restart local v2       #replaceStart:I
    :cond_1
    move v1, v4

    .line 56
    #v1=(Integer);
    goto :goto_1

    .line 61
    .end local v0           #messageBody:Landroid/text/SpannableStringBuilder;
    .end local v2           #replaceStart:I
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mail/compose/ComposeActivity;->mBodyView:Landroid/widget/EditText;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method
