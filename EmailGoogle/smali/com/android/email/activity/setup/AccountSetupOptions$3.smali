.class Lcom/android/email/activity/setup/AccountSetupOptions$3;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->val$msgResId:I

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->val$args:[Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    const v1, 0x1010355

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #v1=(Reference);
    const v2, 0x7f0a01c0

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->val$msgResId:I

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->val$args:[Ljava/lang/Object;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #v1=(Reference);
    const v2, 0x7f0a01e8

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupOptions$3$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$3$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions$3;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 320
    return-void
.end method
