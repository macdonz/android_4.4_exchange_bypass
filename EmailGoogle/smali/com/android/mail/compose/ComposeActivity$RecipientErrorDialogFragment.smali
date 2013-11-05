.class public Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientErrorDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2404
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;
    .locals 3
    .parameter "message"

    .prologue
    .line 2407
    new-instance v1, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;-><init>()V

    .line 2408
    .local v1, frag:Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2409
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "message"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v1, v0}, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2411
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "message"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2417
    .local v0, message:Ljava/lang/String;
    #v0=(Reference);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0038

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c7

    new-instance v3, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;-><init>(Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;)V

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
