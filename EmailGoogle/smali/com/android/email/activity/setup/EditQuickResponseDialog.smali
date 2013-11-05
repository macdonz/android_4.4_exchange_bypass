.class public Lcom/android/email/activity/setup/EditQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "EditQuickResponseDialog.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mQuickResponseEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    #v0=(Reference);
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/email/activity/setup/EditQuickResponseDialog;
    .locals 3
    .parameter "text"
    .parameter "baseUri"
    .parameter "create"

    .prologue
    .line 59
    new-instance v1, Lcom/android/email/activity/setup/EditQuickResponseDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;-><init>()V

    .line 61
    .local v1, dialog:Lcom/android/email/activity/setup/EditQuickResponseDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "quick_response_edited_string"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "quick_response_content_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "quick_response_create"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 72
    #v9=(Null);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    #v7=(Reference);
    const-string v8, "quick_response_content_uri"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Landroid/net/Uri;

    .line 73
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "quick_response_create"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 75
    .local v1, create:Z
    #v1=(Boolean);
    const/4 v3, 0x0

    .line 76
    .local v3, quickResponseSavedString:Ljava/lang/String;
    #v3=(Null);
    if-eqz p1, :cond_0

    .line 77
    const-string v7, "quick_response_edited_string"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_0
    #v3=(Reference);
    if-nez v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "quick_response_edited_string"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04005c

    #v8=(Integer);
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 86
    .local v6, wrapper:Landroid/view/View;
    #v6=(Reference);
    const v7, 0x7f080123

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    .line 88
    if-eqz v3, :cond_2

    .line 89
    iget-object v7, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 93
    iget-object v7, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;

    #v8=(UninitRef);
    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;-><init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;)V

    #v8=(Reference);
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    new-instance v4, Lcom/android/email/activity/setup/EditQuickResponseDialog$2;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v1, v5}, Lcom/android/email/activity/setup/EditQuickResponseDialog$2;-><init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;ZLandroid/net/Uri;)V

    .line 121
    .local v4, saveClickListener:Landroid/content/DialogInterface$OnClickListener;
    #v4=(Reference);
    new-instance v2, Lcom/android/email/activity/setup/EditQuickResponseDialog$3;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/setup/EditQuickResponseDialog$3;-><init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;Landroid/net/Uri;)V

    .line 129
    .local v2, deleteClickListener:Landroid/content/DialogInterface$OnClickListener;
    #v2=(Reference);
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, b:Landroid/app/AlertDialog$Builder;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0213

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0154

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0214

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    if-nez v1, :cond_3

    .line 135
    const v7, 0x7f0a004b

    #v7=(Integer);
    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    :cond_3
    #v7=(Conflicted);
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    #v7=(Reference);
    iput-object v7, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 138
    iget-object v7, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v7
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    #v0=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string v0, "quick_response_edited_string"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method
