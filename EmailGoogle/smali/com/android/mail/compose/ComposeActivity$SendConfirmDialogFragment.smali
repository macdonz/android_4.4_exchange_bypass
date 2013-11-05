.class public Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendConfirmDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2633
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(IZZ)Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;
    .locals 3
    .parameter "messageId"
    .parameter "save"
    .parameter "showToast"

    .prologue
    .line 2637
    new-instance v1, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;-><init>()V

    .line 2638
    .local v1, frag:Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2639
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "messageId"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2640
    const-string v2, "save"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2641
    const-string v2, "showToast"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2642
    invoke-virtual {v1, v0}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2643
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "messageId"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2649
    .local v0, messageId:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "save"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2650
    .local v1, save:Z
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "showToast"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2652
    .local v2, showToast:Z
    #v2=(Boolean);
    new-instance v3, Landroid/app/AlertDialog$Builder;

    #v3=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0039

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0040

    new-instance v5, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0, v1, v2}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;-><init>(Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;ZZ)V

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
