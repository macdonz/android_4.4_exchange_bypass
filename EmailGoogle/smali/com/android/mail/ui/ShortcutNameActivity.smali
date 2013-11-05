.class public Lcom/android/mail/ui/ShortcutNameActivity;
.super Landroid/app/Activity;
.source "ShortcutNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mFolderName:Ljava/lang/String;

.field private mFolderText:Landroid/widget/EditText;

.field private mShortcutClickIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ShortcutNameActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->finish()V

    .line 117
    return-void
.end method

.method private doCreateShortcut()V
    .locals 5

    .prologue
    .line 97
    iget-object v3, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 99
    .local v2, userShortcutName:Ljava/lang/CharSequence;
    #v2=(Reference);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, resultIntent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v3, "extra_folder_click_intent"

    iget-object v4, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    #v4=(Reference);
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, shortcutName:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    #v3=(Reference);
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_0
    #v3=(Conflicted);
    const/4 v3, -0x1

    #v3=(Byte);
    iget-object v4, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/android/mail/ui/ShortcutNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->finish()V

    .line 112
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 79
    .local v0, id:I
    #v0=(Integer);
    const v1, 0x7f08002b

    #v1=(Integer);
    if-ne v1, v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->doCreateShortcut()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const v1, 0x7f08002a

    if-ne v1, v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->doCancel()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f040064

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ShortcutNameActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "extra_folder_click_intent"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_shortcut_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderName:Ljava/lang/String;

    .line 59
    const v2, 0x7f080137

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    .line 60
    iget-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 64
    iget-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 65
    iget-object v2, p0, Lcom/android/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 66
    .local v1, editableText:Landroid/text/Editable;
    #v1=(Reference);
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 68
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v2, 0x7f08002a

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 72
    const v2, 0x7f030002

    #v2=(Integer);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 74
    :cond_0
    #v2=(Conflicted);
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 88
    const/4 v0, 0x6

    #v0=(PosByte);
    if-ne p2, v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/mail/ui/ShortcutNameActivity;->doCreateShortcut()V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
