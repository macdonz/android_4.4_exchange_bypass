.class public Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    .locals 3
    .parameter "note"

    .prologue
    .line 692
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;-><init>()V

    .line 693
    .local v1, f:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 694
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "NoteDialogFragment.Note"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 696
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 702
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "NoteDialogFragment.Note"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, note:Ljava/lang/String;
    #v1=(Reference);
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v2=(Reference);
    const v3, 0x1010355

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0153

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;)V

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0154

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
