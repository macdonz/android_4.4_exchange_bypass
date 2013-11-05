.class public Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginWarningDialog"
.end annotation


# instance fields
.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 869
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
    .locals 3
    .parameter "accountName"
    .parameter "reason"

    .prologue
    .line 875
    new-instance v1, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;-><init>()V

    .line 876
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 877
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "account_name"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 879
    iput-object p1, v1, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->mReason:Ljava/lang/String;

    .line 880
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->dismiss()V

    .line 920
    const/4 v0, -0x2

    #v0=(Byte);
    if-ne p2, v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 923
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v13, 0x1

    .line 885
    #v13=(One);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    #v10=(Reference);
    const-string v11, "account_name"

    #v11=(Reference);
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, accountName:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 888
    .local v3, context:Landroid/content/Context;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 889
    .local v7, res:Landroid/content/res/Resources;
    #v7=(Reference);
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    .local v2, b:Landroid/app/AlertDialog$Builder;
    #v2=(Reference);
    const v10, 0x7f0a01f2

    #v10=(Integer);
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 891
    const v10, 0x1010355

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 892
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->mReason:Ljava/lang/String;

    #v10=(Reference);
    if-eqz v10, :cond_0

    .line 893
    new-instance v4, Landroid/widget/TextView;

    #v4=(UninitRef);
    invoke-direct {v4, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 894
    .local v4, message:Landroid/widget/TextView;
    #v4=(Reference);
    const v10, 0x7f0a01f4

    #v10=(Integer);
    const/4 v11, 0x2

    #v11=(PosByte);
    new-array v11, v11, [Ljava/lang/Object;

    #v11=(Reference);
    aput-object v0, v11, v12

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->mReason:Ljava/lang/String;

    #v12=(Reference);
    aput-object v12, v11, v13

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, alert:Ljava/lang/String;
    #v1=(Reference);
    new-instance v8, Landroid/text/SpannableString;

    #v8=(UninitRef);
    invoke-direct {v8, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 897
    .local v8, spannableAlertString:Landroid/text/SpannableString;
    #v8=(Reference);
    invoke-static {v8, v13}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 898
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const v10, 0x7f09007e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 902
    .local v9, textSize:I
    #v9=(Integer);
    int-to-float v10, v9

    #v10=(Float);
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 903
    const v10, 0x7f09007f

    #v10=(Integer);
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 904
    .local v5, paddingLeft:I
    #v5=(Integer);
    const v10, 0x7f090080

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 905
    .local v6, paddingOther:I
    #v6=(Integer);
    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 906
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 907
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 912
    .end local v1           #alert:Ljava/lang/String;
    .end local v4           #message:Landroid/widget/TextView;
    .end local v5           #paddingLeft:I
    .end local v6           #paddingOther:I
    .end local v8           #spannableAlertString:Landroid/text/SpannableString;
    .end local v9           #textSize:I
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const v10, 0x7f0a0153

    #v10=(Integer);
    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 913
    const v10, 0x7f0a0154

    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 914
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    #v10=(Reference);
    return-object v10

    .line 909
    :cond_0
    #v1=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v12=(Null);
    const v10, 0x7f0a01f3

    #v10=(Integer);
    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
